import "jsr:@supabase/functions-js/edge-runtime.d.ts";
import { createClient } from "npm:@supabase/supabase-js@2";

const corsHeaders = {
  "Access-Control-Allow-Origin": "*",
  "Access-Control-Allow-Methods": "GET, POST, PUT, DELETE, OPTIONS",
  "Access-Control-Allow-Headers": "Content-Type, Authorization, X-Client-Info, Apikey",
};

const PAYPAL_CLIENT_ID = Deno.env.get("PAYPAL_CLIENT_ID") ?? "";
const PAYPAL_SECRET = Deno.env.get("PAYPAL_SECRET") ?? "";
const SUPABASE_URL = Deno.env.get("SUPABASE_URL") ?? "";
const SUPABASE_SERVICE_ROLE_KEY = Deno.env.get("SUPABASE_SERVICE_ROLE_KEY") ?? "";
const SUPABASE_ANON_KEY = Deno.env.get("SUPABASE_ANON_KEY") ?? "";

const PAYPAL_BASE = "https://api-m.paypal.com";
const PRODUCT_CURRENCY = "USD";

const PRODUCTS = {
  remove_ads: {
    price: "12.00",
    description: "Remove Ads — Permanent one-time payment",
  },
  premium_access: {
    price: "12.00",
    description: "Premium Access — 1 Year Subscription",
  },
} as const;

type ProductId = keyof typeof PRODUCTS;

async function getPayPalAccessToken(): Promise<string> {
  if (!PAYPAL_CLIENT_ID || !PAYPAL_SECRET) {
    throw new Error("PayPal credentials not configured");
  }
  const credentials = btoa(`${PAYPAL_CLIENT_ID}:${PAYPAL_SECRET}`);
  const res = await fetch(`${PAYPAL_BASE}/v1/oauth2/token`, {
    method: "POST",
    headers: {
      Authorization: `Basic ${credentials}`,
      "Content-Type": "application/x-www-form-urlencoded",
    },
    body: "grant_type=client_credentials",
  });
  if (!res.ok) {
    const text = await res.text();
    throw new Error(`PayPal auth failed: ${text}`);
  }
  const data = await res.json();
  return data.access_token;
}

Deno.serve(async (req: Request) => {
  if (req.method === "OPTIONS") {
    return new Response(null, { status: 200, headers: corsHeaders });
  }

  try {
    const url = new URL(req.url);
    const path = url.pathname.replace(/^\/paypal-payments/, "");

    if (req.method === "GET" && path === "/config") {
      if (!PAYPAL_CLIENT_ID) {
        return new Response(JSON.stringify({ error: "Payment not configured" }), {
          status: 503,
          headers: { ...corsHeaders, "Content-Type": "application/json" },
        });
      }
      return new Response(JSON.stringify({ clientId: PAYPAL_CLIENT_ID }), {
        headers: { ...corsHeaders, "Content-Type": "application/json" },
      });
    }

    const authHeader = req.headers.get("Authorization");
    if (!authHeader) {
      return new Response(JSON.stringify({ error: "Unauthorized" }), {
        status: 401,
        headers: { ...corsHeaders, "Content-Type": "application/json" },
      });
    }

    const supabase = createClient(SUPABASE_URL, SUPABASE_SERVICE_ROLE_KEY);
    const userClient = createClient(SUPABASE_URL, SUPABASE_ANON_KEY, {
      global: { headers: { Authorization: authHeader } },
    });

    const { data: { user }, error: userError } = await userClient.auth.getUser();
    if (userError || !user) {
      return new Response(JSON.stringify({ error: "Unauthorized" }), {
        status: 401,
        headers: { ...corsHeaders, "Content-Type": "application/json" },
      });
    }

    if (req.method === "POST" && path === "/create-order") {
      const body = await req.json();
      const productId: ProductId = body.productId === "premium_access" ? "premium_access" : "remove_ads";
      const product = PRODUCTS[productId];

      const { data: profile } = await supabase
        .from("user_profiles")
        .select("ads_removed, premium_expires_at")
        .eq("id", user.id)
        .maybeSingle();

      if (productId === "remove_ads" && profile?.ads_removed) {
        return new Response(JSON.stringify({ error: "Ads already removed for this account." }), {
          status: 409,
          headers: { ...corsHeaders, "Content-Type": "application/json" },
        });
      }

      if (productId === "premium_access" && profile?.premium_expires_at) {
        const expiry = new Date(profile.premium_expires_at);
        if (expiry > new Date()) {
          return new Response(JSON.stringify({ error: "This account already has active premium access." }), {
            status: 409,
            headers: { ...corsHeaders, "Content-Type": "application/json" },
          });
        }
      }

      const accessToken = await getPayPalAccessToken();
      const idempotencyKey = `create-${productId}-${user.id}-${Math.floor(Date.now() / 60000)}`;
      const res = await fetch(`${PAYPAL_BASE}/v2/checkout/orders`, {
        method: "POST",
        headers: {
          Authorization: `Bearer ${accessToken}`,
          "Content-Type": "application/json",
          "PayPal-Request-Id": idempotencyKey,
        },
        body: JSON.stringify({
          intent: "CAPTURE",
          purchase_units: [
            {
              reference_id: productId,
              description: product.description,
              amount: {
                currency_code: PRODUCT_CURRENCY,
                value: product.price,
              },
            },
          ],
          application_context: {
            brand_name: "WASSCE Study Platform",
            user_action: "PAY_NOW",
            shipping_preference: "NO_SHIPPING",
          },
        }),
      });

      if (!res.ok) {
        const text = await res.text();
        throw new Error(`PayPal create-order failed: ${text}`);
      }

      const order = await res.json();
      return new Response(JSON.stringify({ orderId: order.id }), {
        headers: { ...corsHeaders, "Content-Type": "application/json" },
      });
    }

    if (req.method === "POST" && path === "/capture-order") {
      const body = await req.json();
      const { orderId } = body;
      const productId: ProductId = body.productId === "premium_access" ? "premium_access" : "remove_ads";

      if (!orderId || typeof orderId !== "string") {
        return new Response(JSON.stringify({ error: "orderId required" }), {
          status: 400,
          headers: { ...corsHeaders, "Content-Type": "application/json" },
        });
      }

      const { data: existingPayment } = await supabase
        .from("payments")
        .select("id, status, product_id")
        .eq("paypal_order_id", orderId)
        .maybeSingle();

      if (existingPayment?.status === "COMPLETED") {
        const { data: currentProfile } = await supabase
          .from("user_profiles")
          .select("premium_expires_at, ads_removed")
          .eq("id", user.id)
          .maybeSingle();

        if (productId === "premium_access") {
          const alreadyPremium = currentProfile?.premium_expires_at &&
            new Date(currentProfile.premium_expires_at) > new Date();
          if (!alreadyPremium) {
            await supabase
              .from("user_profiles")
              .update({ premium_expires_at: new Date(Date.now() + 365 * 24 * 60 * 60 * 1000).toISOString(), ads_removed: true })
              .eq("id", user.id);
          }
        } else {
          if (!currentProfile?.ads_removed) {
            await supabase
              .from("user_profiles")
              .update({ ads_removed: true })
              .eq("id", user.id);
          }
        }
        return new Response(JSON.stringify({ success: true, alreadyCaptured: true }), {
          headers: { ...corsHeaders, "Content-Type": "application/json" },
        });
      }

      const accessToken = await getPayPalAccessToken();
      const captureRes = await fetch(`${PAYPAL_BASE}/v2/checkout/orders/${orderId}/capture`, {
        method: "POST",
        headers: {
          Authorization: `Bearer ${accessToken}`,
          "Content-Type": "application/json",
          "PayPal-Request-Id": `capture-${orderId}`,
        },
      });

      if (!captureRes.ok) {
        const text = await captureRes.text();
        throw new Error(`PayPal capture failed: ${text}`);
      }

      const captured = await captureRes.json();
      if (captured.status !== "COMPLETED") {
        return new Response(JSON.stringify({ error: `Payment not completed. Status: ${captured.status}` }), {
          status: 402,
          headers: { ...corsHeaders, "Content-Type": "application/json" },
        });
      }

      const purchaseUnit = captured.purchase_units?.[0];
      const captureAmount = purchaseUnit?.payments?.captures?.[0]?.amount?.value ?? PRODUCTS[productId].price;
      const captureId = purchaseUnit?.payments?.captures?.[0]?.id ?? null;

      const { error: paymentInsertError } = await supabase.from("payments").insert({
        user_id: user.id,
        paypal_order_id: orderId,
        paypal_capture_id: captureId,
        product_id: productId,
        amount: parseFloat(captureAmount),
        currency: PRODUCT_CURRENCY,
        status: "COMPLETED",
      });

      if (paymentInsertError) {
        const isDuplicate =
          paymentInsertError.code === "23505" ||
          paymentInsertError.message?.toLowerCase().includes("duplicate") ||
          paymentInsertError.message?.toLowerCase().includes("unique");
        if (!isDuplicate) {
          throw new Error(`Failed to record payment: ${paymentInsertError.message}`);
        }
      }

      if (productId === "premium_access") {
        const premiumExpiry = new Date(Date.now() + 365 * 24 * 60 * 60 * 1000).toISOString();
        const { error: profileUpdateError } = await supabase
          .from("user_profiles")
          .update({ premium_expires_at: premiumExpiry, ads_removed: true })
          .eq("id", user.id);

        if (profileUpdateError) {
          throw new Error(`Failed to update profile: ${profileUpdateError.message}`);
        }
      } else {
        const { error: profileUpdateError } = await supabase
          .from("user_profiles")
          .update({ ads_removed: true })
          .eq("id", user.id);

        if (profileUpdateError) {
          throw new Error(`Failed to update profile: ${profileUpdateError.message}`);
        }
      }

      return new Response(JSON.stringify({ success: true }), {
        headers: { ...corsHeaders, "Content-Type": "application/json" },
      });
    }

    return new Response(JSON.stringify({ error: "Not found" }), {
      status: 404,
      headers: { ...corsHeaders, "Content-Type": "application/json" },
    });
  } catch (err) {
    const message = err instanceof Error ? err.message : "Internal server error";
    return new Response(JSON.stringify({ error: message }), {
      status: 500,
      headers: { ...corsHeaders, "Content-Type": "application/json" },
    });
  }
});
