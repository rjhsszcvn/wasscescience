import { useEffect, useRef, useState } from 'react';
import {
  CheckCircle, Star, Eye, Shield, MessageCircle, Key, ArrowRight,
  Sparkles, Crown, ArrowLeft, Lock, Loader2, AlertCircle, CreditCard,
  RefreshCw, Brain, BookOpen, Trophy, Users, BadgeCheck, Flame,
} from 'lucide-react';
import { useAuth } from '../../contexts/AuthContext';
import { supabase } from '../../lib/supabase';
import { Page } from '../../lib/types';

interface PremiumPageProps {
  onNavigate: (page: Page) => void;
}

declare global {
  interface Window {
    paypal?: {
      Buttons?: (config: Record<string, unknown>) => { render: (selector: string) => Promise<void>; isEligible?: () => boolean };
    };
  }
}

const BENEFITS = [
  { icon: BookOpen, title: 'All 11 Subjects Unlocked', desc: 'Physics, Chemistry, Biology, Geography, Further Maths, Agric, Core Science, Health Science & PE.' },
  { icon: Brain, title: 'MentorX AI Study Brain', desc: 'Get deep WASSCE-focused explanations, worked examples, and exam tips across all subjects.' },
  { icon: Shield, title: 'Ad-Free Experience', desc: 'Clean, distraction-free learning on every page — no banners, no interruptions.' },
  { icon: Eye, title: 'Student Hub & Leaderboard', desc: 'Collaborate with peers, ask questions, and compete across West Africa.' },
  { icon: Trophy, title: 'Mock Exam Engine', desc: 'Full timed mock exams with instant marking and performance analytics.' },
  { icon: Users, title: 'Study Lounge Access', desc: 'Join live study sessions and chat rooms with fellow WASSCE candidates.' },
  { icon: Flame, title: 'Streak & Progress Tracking', desc: 'Track your daily study streaks, quiz scores, and topic mastery over time.' },
  { icon: Star, title: 'Yearly Subscription', desc: 'Pay once per year and enjoy uninterrupted access for a full 12 months.' },
];

const supabaseUrl = import.meta.env.VITE_SUPABASE_URL as string;
const anonKey = import.meta.env.VITE_SUPABASE_ANON_KEY as string;

const CONFIG_TIMEOUT_MS = 20000;
const CAPTURE_TIMEOUT_MS = 45000;
const SDK_TIMEOUT_MS = 45000;

async function fetchWithTimeout(url: string, options: RequestInit, timeoutMs: number): Promise<Response> {
  const controller = new AbortController();
  const timer = setTimeout(() => controller.abort(), timeoutMs);
  try {
    const res = await fetch(url, { ...options, signal: controller.signal });
    return res;
  } finally {
    clearTimeout(timer);
  }
}

type PayPalStatus = 'idle' | 'loading-config' | 'loading-sdk' | 'ready' | 'error';

export default function PremiumPage({ onNavigate }: PremiumPageProps) {
  const { isPremium, refreshProfile } = useAuth();

  const [code, setCode] = useState('');
  const [codeError, setCodeError] = useState('');
  const [codeLoading, setCodeLoading] = useState(false);
  const [codeSuccess, setCodeSuccess] = useState(false);

  const whatsappRef = useRef<HTMLDivElement>(null);
  const [paypalStatus, setPaypalStatus] = useState<PayPalStatus>('idle');
  const [paypalError, setPaypalError] = useState('');
  const [paypalProcessing, setPaypalProcessing] = useState(false);
  const [paypalSuccess, setPaypalSuccess] = useState(false);
  const mountedRef = useRef(true);
  const initCalledRef = useRef(false);

  useEffect(() => {
    mountedRef.current = true;
    if (!initCalledRef.current) {
      initCalledRef.current = true;
      initPayPal();
    }
    return () => {
      mountedRef.current = false;
    };
  }, []);

  useEffect(() => {
    if (paypalSuccess || codeSuccess || isPremium) {
      const timer = setTimeout(() => {
        if (mountedRef.current) onNavigate('dashboard');
      }, 2500);
      return () => clearTimeout(timer);
    }
  }, [paypalSuccess, codeSuccess, isPremium]);

  async function initPayPal() {
    if (!mountedRef.current) return;
    setPaypalStatus('loading-config');
    setPaypalError('');

    try {
      const res = await fetchWithTimeout(
        `${supabaseUrl}/functions/v1/paypal-payments/config`,
        {
          headers: {
            'Apikey': anonKey,
            'Content-Type': 'application/json',
          },
        },
        CONFIG_TIMEOUT_MS
      );

      if (!mountedRef.current) return;

      const data = await res.json().catch(() => ({}));
      if (!res.ok) {
        throw new Error(data.error || `Payment service unavailable (${res.status})`);
      }
      const id: string = data.clientId;
      if (!id) throw new Error('Payment configuration is missing. Please contact support.');

      setPaypalStatus('loading-sdk');
      await loadSdkAndRender(id);
    } catch (e) {
      if (!mountedRef.current) return;
      const msg = e instanceof Error
        ? e.name === 'AbortError'
          ? 'Connection timed out. Please check your internet and try again.'
          : e.message
        : 'Failed to load payment config. Please refresh and try again.';
      setPaypalError(msg);
      setPaypalStatus('error');
    }
  }

  function loadSdkAndRender(id: string): Promise<void> {
    return new Promise<void>((resolve, reject) => {
      const existing = document.getElementById('paypal-sdk-v2');
      if (existing) {
        (existing as HTMLScriptElement).onload = null;
        (existing as HTMLScriptElement).onerror = null;
        existing.remove();
      }
      try { delete (window as Window & { paypal?: unknown }).paypal; } catch { /* ignore */ }

      const script = document.createElement('script');
      script.id = 'paypal-sdk-v2';
      script.src = `https://www.paypal.com/sdk/js?client-id=${id}&currency=USD&intent=capture&components=buttons&disable-funding=venmo,paylater&enable-funding=card`;
      script.async = true;

      const timeoutId = setTimeout(() => {
        script.onload = null;
        script.onerror = null;
        reject(new Error('PayPal took too long to load. Please check your connection and try again.'));
      }, SDK_TIMEOUT_MS);

      script.onload = () => {
        clearTimeout(timeoutId);
        const checkReady = (attempts: number) => {
          if (window.paypal && typeof window.paypal.Buttons === 'function') {
            resolve();
            return;
          }
          if (attempts <= 0) {
            reject(new Error('PayPal loaded but failed to initialise. Please refresh and try again.'));
            return;
          }
          setTimeout(() => checkReady(attempts - 1), 100);
        };
        checkReady(20);
      };

      script.onerror = () => {
        clearTimeout(timeoutId);
        reject(new Error('PayPal script failed to load. This may be due to an ad blocker or network issue.'));
      };

      document.head.appendChild(script);
    }).then(() => {
      if (!mountedRef.current) return;
      return renderButtons();
    }).catch((err) => {
      if (!mountedRef.current) return;
      const msg = err instanceof Error ? err.message : 'Failed to load PayPal.';
      setPaypalError(msg);
      setPaypalStatus('error');
    });
  }

  async function renderButtons() {
    if (!window.paypal || typeof window.paypal.Buttons !== 'function') {
      setPaypalError('PayPal is not available. Please refresh the page.');
      setPaypalStatus('error');
      return;
    }

    const waitForContainer = (): Promise<HTMLElement> => {
      return new Promise((resolve, reject) => {
        const start = Date.now();
        const poll = () => {
          const el = document.getElementById('paypal-btn-mount');
          if (el) { resolve(el); return; }
          if (Date.now() - start > 5000) { reject(new Error('Payment container not found.')); return; }
          setTimeout(poll, 80);
        };
        poll();
      });
    };

    try {
      const container = await waitForContainer();
      container.innerHTML = '';

      await window.paypal.Buttons({
        style: {
          shape: 'rect',
          color: 'gold',
          layout: 'vertical',
          label: 'pay',
          height: 50,
          tagline: false,
        },

        createOrder: async () => {
          setPaypalError('');
          const { data: sessionData } = await supabase.auth.getSession();
          const token = sessionData.session?.access_token;
          if (!token) throw new Error('Your session has expired. Please sign in again.');

          const res = await fetchWithTimeout(
            `${supabaseUrl}/functions/v1/paypal-payments/create-order`,
            {
              method: 'POST',
              headers: {
                'Content-Type': 'application/json',
                Authorization: `Bearer ${token}`,
              },
              body: JSON.stringify({ productId: 'premium_access' }),
            },
            CONFIG_TIMEOUT_MS
          );

          const data = await res.json().catch(() => ({}));
          if (!res.ok) {
            if (res.status === 409) throw new Error('Your account already has active premium access.');
            throw new Error(data.error || 'Failed to create order. Please try again.');
          }
          if (!data.orderId) throw new Error('Invalid response from payment server.');
          return data.orderId;
        },

        onApprove: async (approveData: { orderID: string }) => {
          setPaypalProcessing(true);
          setPaypalError('');
          try {
            const { data: sessionData } = await supabase.auth.getSession();
            const token = sessionData.session?.access_token;
            if (!token) throw new Error('Your session has expired. Please sign in again.');

            const res = await fetchWithTimeout(
              `${supabaseUrl}/functions/v1/paypal-payments/capture-order`,
              {
                method: 'POST',
                headers: {
                  'Content-Type': 'application/json',
                  Authorization: `Bearer ${token}`,
                },
                body: JSON.stringify({ orderId: approveData.orderID, productId: 'premium_access' }),
              },
              CAPTURE_TIMEOUT_MS
            );

            const result = await res.json().catch(() => ({}));
            if (!res.ok) throw new Error(result.error || 'Payment capture failed. Please contact support.');

            await refreshProfile();
            if (mountedRef.current) {
              setPaypalSuccess(true);
              setTimeout(() => { if (mountedRef.current) onNavigate('dashboard'); }, 2500);
            }
          } catch (err) {
            const msg = err instanceof Error
              ? err.name === 'AbortError'
                ? 'Payment timed out. If you were charged, please contact support with your order ID.'
                : err.message
              : 'Payment failed. Please contact support.';
            if (mountedRef.current) setPaypalError(msg);
          } finally {
            if (mountedRef.current) setPaypalProcessing(false);
          }
        },

        onError: (err: unknown) => {
          const msg = err instanceof Error ? err.message : '';
          if (!msg.includes('popup') && !msg.includes('window')) {
            if (mountedRef.current) {
              setPaypalError('Payment could not be processed. Please try again or use a different payment method.');
            }
          }
        },

        onCancel: () => {
          if (mountedRef.current) setPaypalError('');
        },
      }).render('#paypal-btn-mount');

      if (mountedRef.current) setPaypalStatus('ready');
    } catch (e) {
      const msg = e instanceof Error ? e.message : 'Failed to initialize PayPal buttons.';
      if (mountedRef.current) {
        setPaypalError(msg);
        setPaypalStatus('error');
      }
    }
  }

  async function handleRedeemCode() {
    const trimmed = code.trim().toUpperCase();
    if (!trimmed) {
      setCodeError('Please enter a code.');
      return;
    }
    if (trimmed.length < 6 || trimmed.length > 32 || !/^[A-Z0-9\-_]+$/.test(trimmed)) {
      setCodeError('Invalid code format. Codes contain letters, numbers, and hyphens only.');
      return;
    }

    setCodeLoading(true);
    setCodeError('');

    const { data: { session } } = await supabase.auth.getSession();
    if (!session) {
      setCodeError('You must be signed in to redeem a code.');
      setCodeLoading(false);
      return;
    }

    const { data, error } = await supabase.rpc('redeem_premium_code', {
      p_code: trimmed,
      p_user_id: session.user.id,
    });

    setCodeLoading(false);

    if (error || !data) {
      setCodeError('Something went wrong. Please try again.');
      return;
    }

    if (!data.success) {
      if (data.error === 'already_used') {
        setCodeError('This code has already been used.');
      } else if (data.error === 'invalid_code') {
        setCodeError('Invalid premium access code.');
      } else {
        setCodeError(data.message || 'Invalid code.');
      }
      return;
    }

    await refreshProfile();
    setCodeSuccess(true);
    setTimeout(() => onNavigate('dashboard'), 2500);
  }

  useEffect(() => {
    if (paypalStatus === 'error' && whatsappRef.current) {
      setTimeout(() => {
        whatsappRef.current?.scrollIntoView({ behavior: 'smooth', block: 'start' });
      }, 400);
    }
  }, [paypalStatus]);

  function handleRetry() {
    initCalledRef.current = false;
    setPaypalError('');
    setPaypalStatus('idle');
    setTimeout(() => {
      initCalledRef.current = true;
      initPayPal();
    }, 50);
  }

  if (isPremium || codeSuccess || paypalSuccess) {
    return (
      <div className="min-h-screen bg-gradient-to-br from-slate-50 to-slate-100 flex items-center justify-center p-4">
        <div className="max-w-md w-full text-center">
          <div
            className="w-24 h-24 bg-gradient-to-br from-amber-400 to-orange-500 rounded-3xl flex items-center justify-center mx-auto mb-6 shadow-xl"
            style={{ animation: 'celebrate 0.6s cubic-bezier(0.34, 1.56, 0.64, 1) both' }}
          >
            <Crown size={40} className="text-white" />
          </div>
          <h1 className="text-3xl font-black text-slate-900 mb-3">Premium Active!</h1>
          <p className="text-slate-500 mb-3 leading-relaxed">
            Your account now has full premium access. Enjoy an uninterrupted learning experience.
          </p>
          <p className="text-sm text-slate-400 mb-8">Redirecting to your dashboard...</p>
          <button
            onClick={() => onNavigate('dashboard')}
            className="w-full py-4 bg-slate-900 hover:bg-slate-800 text-white font-bold rounded-2xl transition-all active:scale-95"
          >
            Go to Dashboard
          </button>
        </div>
      </div>
    );
  }

  const isLoadingPayPal = paypalStatus === 'loading-config' || paypalStatus === 'loading-sdk';

  return (
    <div className="min-h-screen bg-gradient-to-br from-slate-50 via-white to-slate-100">
      <div className="max-w-2xl mx-auto px-4 py-12 sm:py-20">

        <button
          onClick={() => onNavigate('dashboard')}
          className="flex items-center gap-2 text-slate-500 hover:text-slate-800 text-sm font-medium mb-8 transition-colors"
        >
          <ArrowLeft size={15} /> Back to Dashboard
        </button>

        <div className="text-center mb-10">
          <div className="inline-flex items-center gap-2 px-4 py-2 bg-amber-50 border border-amber-200 rounded-full text-amber-700 text-xs font-bold mb-6 tracking-wide">
            <Sparkles size={12} />
            YEARLY PREMIUM SUBSCRIPTION
          </div>
          <h1 className="text-4xl sm:text-5xl font-black text-slate-900 mb-4 leading-tight tracking-tight">
            Upgrade to<br />
            <span className="text-amber-500">Premium</span>
          </h1>
          <p className="text-slate-500 text-lg max-w-md mx-auto leading-relaxed">
            Unlock MentorX AI, all subjects, Student Hub, Leaderboard, and the complete WASSCE preparation experience.
          </p>
        </div>

        <div
          className="rounded-3xl p-8 mb-6 text-white relative overflow-hidden"
          style={{
            background: 'linear-gradient(135deg, #0f172a 0%, #1e293b 50%, #0f172a 100%)',
            boxShadow: '0 20px 60px rgba(0,0,0,0.25)',
          }}
        >
          <div
            className="absolute top-0 right-0 w-80 h-80 rounded-full pointer-events-none"
            style={{ background: 'radial-gradient(circle, rgba(251,191,36,0.15), transparent)', transform: 'translate(30%,-30%)' }}
          />
          <div
            className="absolute bottom-0 left-0 w-48 h-48 rounded-full pointer-events-none"
            style={{ background: 'radial-gradient(circle, rgba(251,191,36,0.08), transparent)', transform: 'translate(-30%,30%)' }}
          />
          <div className="relative">
            <div className="flex items-center gap-2 mb-4">
              <Crown size={18} className="text-amber-400" />
              <span className="text-amber-400 text-sm font-bold uppercase tracking-widest">Premium Access</span>
              <div className="ml-auto flex items-center gap-1.5 bg-amber-400/20 border border-amber-400/30 rounded-full px-3 py-1">
                <BadgeCheck size={12} className="text-amber-300" />
                <span className="text-amber-300 text-[10px] font-bold uppercase tracking-wider">Best Value</span>
              </div>
            </div>
            <div className="flex items-end gap-3 mb-3">
              <span className="text-7xl font-black text-white leading-none">$12</span>
              <div className="mb-2">
                <span className="text-2xl font-bold text-amber-300">USD</span>
                <p className="text-slate-400 text-sm">per year</p>
              </div>
            </div>
            <div className="flex items-center gap-2 mb-4">
              <div className="w-1.5 h-1.5 bg-green-400 rounded-full animate-pulse" />
              <p className="text-slate-300 text-sm">Just $1/month — billed annually via PayPal or WhatsApp</p>
            </div>
            <div className="grid grid-cols-2 gap-3 pt-4 border-t border-white/10">
              {[
                { label: 'Subjects', value: '11 Unlocked' },
                { label: 'MentorX AI', value: 'Included' },
                { label: 'Ad-Free', value: 'All Pages' },
                { label: 'Duration', value: '1 Full Year' },
              ].map(({ label, value }) => (
                <div key={label} className="bg-white/5 rounded-xl px-3 py-2.5">
                  <p className="text-slate-400 text-[10px] uppercase tracking-wider font-semibold">{label}</p>
                  <p className="text-white text-sm font-bold mt-0.5">{value}</p>
                </div>
              ))}
            </div>
          </div>
        </div>

        <div
          className="bg-white border border-slate-200 rounded-2xl overflow-hidden mb-6"
          style={{ boxShadow: '0 2px 12px rgba(0,0,0,0.06)' }}
        >
          <div className="px-5 py-4 border-b border-slate-100 flex items-center justify-between">
            <h2 className="font-black text-slate-800 text-base">Everything included</h2>
            <span className="text-xs text-amber-600 font-bold bg-amber-50 px-2 py-1 rounded-full">8 features</span>
          </div>
          <div className="divide-y divide-slate-50">
            {BENEFITS.map(({ icon: Icon, title, desc }) => (
              <div key={title} className="flex items-center gap-4 px-5 py-4">
                <div className="w-10 h-10 bg-amber-50 border border-amber-100 rounded-xl flex items-center justify-center flex-shrink-0">
                  <Icon size={16} className="text-amber-600" />
                </div>
                <div className="flex-1 min-w-0">
                  <p className="text-sm font-bold text-slate-800">{title}</p>
                  <p className="text-xs text-slate-400 mt-0.5 leading-relaxed">{desc}</p>
                </div>
                <CheckCircle size={15} className="text-green-500 flex-shrink-0" />
              </div>
            ))}
          </div>
        </div>

        <div
          className="bg-white border border-slate-200 rounded-2xl p-6 mb-6"
          style={{ boxShadow: '0 2px 12px rgba(0,0,0,0.06)' }}
        >
          <div className="flex items-center gap-2 mb-1">
            <CreditCard size={16} className="text-slate-600" />
            <h2 className="font-black text-slate-800 text-base">Pay Instantly via PayPal</h2>
          </div>
          <p className="text-sm text-slate-500 mb-5">
            Complete payment and your account is unlocked immediately — no code needed.
          </p>

          {paypalError && (
            <div className="rounded-xl overflow-hidden border border-red-200 mb-4">
              <div className="flex items-start gap-3 p-3.5 bg-red-50">
                <AlertCircle size={15} className="flex-shrink-0 mt-0.5 text-red-600" />
                <div className="flex-1">
                  <p className="font-semibold text-red-700 mb-0.5">PayPal unavailable</p>
                  <p className="text-red-600 text-xs leading-relaxed">{paypalError}</p>
                </div>
              </div>
              <div className="bg-amber-50 border-t border-amber-100 px-3.5 py-3">
                <p className="text-xs font-semibold text-amber-800 mb-1">Alternative: Pay via WhatsApp</p>
                <p className="text-xs text-amber-700 leading-relaxed">
                  If PayPal is blocked, scroll down to pay via WhatsApp and receive a code to unlock premium instantly.
                </p>
              </div>
            </div>
          )}

          {paypalProcessing ? (
            <div className="text-center py-8 bg-slate-50 border border-slate-200 rounded-2xl">
              <Loader2 size={28} className="animate-spin text-blue-600 mx-auto mb-3" />
              <p className="text-sm font-semibold text-slate-700">Processing your payment...</p>
              <p className="text-xs text-slate-400 mt-1">Please do not close this page</p>
            </div>
          ) : (
            <div>
              <div className="flex items-center justify-center gap-2 mb-4">
                <Lock size={12} className="text-slate-400" />
                <p className="text-xs font-medium text-slate-400">Secure checkout via PayPal · 256-bit SSL</p>
              </div>

              {isLoadingPayPal && (
                <div className="flex flex-col items-center justify-center py-6 gap-2">
                  <Loader2 size={22} className="animate-spin text-blue-600" />
                  <p className="text-xs text-slate-400 font-medium">
                    {paypalStatus === 'loading-config' ? 'Connecting to payment service...' : 'Loading PayPal...'}
                  </p>
                </div>
              )}

              <div
                id="paypal-btn-mount"
                className={isLoadingPayPal || paypalStatus === 'error' ? 'hidden' : 'block'}
              />

              {paypalStatus === 'error' && (
                <button
                  onClick={handleRetry}
                  className="w-full flex items-center justify-center gap-2 py-3.5 bg-blue-600 hover:bg-blue-700 text-white font-bold rounded-xl transition-colors text-sm mt-2"
                >
                  <RefreshCw size={15} />
                  Retry Payment
                </button>
              )}
            </div>
          )}
        </div>

        <div ref={whatsappRef} className="relative flex items-center gap-4 mb-6">
          <div className="flex-1 h-px bg-slate-200" />
          <span className="text-xs font-semibold text-slate-400 uppercase tracking-widest">or pay via WhatsApp</span>
          <div className="flex-1 h-px bg-slate-200" />
        </div>

        <div
          className="bg-white border border-slate-200 rounded-2xl p-6 mb-6"
          style={{ boxShadow: '0 2px 12px rgba(0,0,0,0.06)' }}
        >
          <h2 className="font-black text-slate-800 text-base mb-1">Pay via WhatsApp</h2>
          <p className="text-sm text-slate-500 mb-5">Follow these steps to unlock premium access manually.</p>

          <div className="space-y-4 mb-6">
            {[
              { step: '01', title: 'Send Payment via WhatsApp', desc: 'Pay 150 Leones to our WhatsApp number. Include your account email in the message.' },
              { step: '02', title: 'Receive Your Access Code', desc: 'We will send you a unique premium code in the format WS-YYYY-XXXX.' },
              { step: '03', title: 'Enter Code Below', desc: 'Paste your code below to instantly unlock premium on your account.' },
            ].map(({ step, title, desc }) => (
              <div key={step} className="flex gap-4">
                <div className="w-8 h-8 bg-slate-900 text-white rounded-xl flex items-center justify-center text-xs font-black flex-shrink-0 mt-0.5">
                  {step}
                </div>
                <div>
                  <p className="text-sm font-bold text-slate-800">{title}</p>
                  <p className="text-xs text-slate-500 mt-0.5 leading-relaxed">{desc}</p>
                </div>
              </div>
            ))}
          </div>

          <a
            href="https://wa.link/fzqhpw"
            target="_blank"
            rel="noopener noreferrer"
            className="flex items-center justify-center gap-2.5 w-full py-4 rounded-2xl font-bold text-white text-base transition-all hover:scale-[1.01] active:scale-95"
            style={{ background: 'linear-gradient(135deg, #25d366, #128c7e)', boxShadow: '0 8px 24px rgba(37,211,102,0.3)' }}
          >
            <MessageCircle size={18} />
            Pay 150 Leones via WhatsApp
            <ArrowRight size={15} />
          </a>
          <p className="text-center text-xs text-slate-400 mt-2">
            Click to open WhatsApp · Include your account email
          </p>
        </div>

        <div
          className="bg-white border border-slate-200 rounded-2xl p-6 mb-6"
          style={{ boxShadow: '0 2px 12px rgba(0,0,0,0.06)' }}
        >
          <div className="flex items-center gap-2 mb-4">
            <Key size={16} className="text-slate-600" />
            <h2 className="font-black text-slate-800 text-base">Enter Your Premium Code</h2>
          </div>
          <p className="text-sm text-slate-500 mb-4">Already paid via WhatsApp? Enter the code you received.</p>

          <div className="space-y-3">
            <input
              type="text"
              value={code}
              onChange={e => {
                setCode(e.target.value.toUpperCase());
                setCodeError('');
              }}
              placeholder="WS-2026-XXXX"
              maxLength={12}
              className="w-full px-4 py-3 border border-slate-200 rounded-xl font-mono text-base text-slate-900 placeholder-slate-300 focus:outline-none focus:border-blue-400 focus:ring-2 focus:ring-blue-100 transition-all tracking-widest text-center uppercase"
              style={{ letterSpacing: '0.15em' }}
            />

            {codeError && (
              <div className="flex items-center gap-2 p-3 bg-red-50 border border-red-200 rounded-xl text-red-700 text-sm">
                <span className="font-semibold">{codeError}</span>
              </div>
            )}

            <button
              onClick={handleRedeemCode}
              disabled={codeLoading || !code.trim()}
              className="w-full py-4 bg-slate-900 hover:bg-slate-800 disabled:opacity-50 disabled:cursor-not-allowed text-white font-bold rounded-xl transition-all active:scale-95 text-sm"
            >
              {codeLoading ? 'Verifying...' : 'Activate Premium Access'}
            </button>
          </div>
        </div>

        <div className="bg-slate-50 border border-slate-200 rounded-2xl p-5 mb-6">
          <div className="flex items-center gap-2 mb-3">
            <Shield size={14} className="text-slate-500" />
            <p className="text-xs font-bold text-slate-600 uppercase tracking-wide">Secure & Trusted</p>
          </div>
          <div className="grid grid-cols-3 gap-3 text-center">
            {[
              { value: '10,000+', label: 'Students' },
              { value: '256-bit', label: 'SSL Secure' },
              { value: '24/7', label: 'Support' },
            ].map(({ value, label }) => (
              <div key={label}>
                <p className="text-sm font-black text-slate-800">{value}</p>
                <p className="text-[10px] text-slate-400 font-medium">{label}</p>
              </div>
            ))}
          </div>
        </div>

        <div className="mt-2 text-center">
          <button
            onClick={() => onNavigate('dashboard')}
            className="text-sm text-slate-400 hover:text-slate-600 transition-colors"
          >
            Back to Dashboard
          </button>
        </div>
      </div>
    </div>
  );
}
