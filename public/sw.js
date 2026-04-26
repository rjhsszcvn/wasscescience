const CACHE_VERSION = 'v9';
const STATIC_CACHE = `wassce-static-${CACHE_VERSION}`;
const DYNAMIC_CACHE = `wassce-dynamic-${CACHE_VERSION}`;
const API_CACHE = `wassce-api-${CACHE_VERSION}`;
const MAX_API_CACHE_ENTRIES = 300;

const ALLOWED_ORIGINS = [
  self.location.origin,
  'https://wasccescience.com',
  'https://www.wasccescience.com',
];

const AD_NETWORK_PATTERNS = [
  'quge5.com',
  'adnxs.com',
  'doubleclick.net',
  'googlesyndication.com',
  'googletagservices.com',
  'google-analytics.com',
  'googleadservices.com',
  'googletag',
  'adsbygoogle',
];

const STATIC_ASSETS = [
  '/',
  '/index.html',
  '/manifest.json',
  '/icons/icon.svg',
  '/.well-known/assetlinks.json',
];

const CACHE_STRATEGIES = {
  static: [
    /\.(?:js|css|woff2?|ttf|otf|eot)$/,
    /\/icons\//,
  ],
  cacheFirst: [
    /images\.pexels\.com/,
    /fonts\.googleapis\.com/,
    /fonts\.gstatic\.com/,
  ],
  supabaseApi: [
    /supabase\.co\/rest\//,
    /\.supabase\.co\/rest\//,
  ],
  edgeFunctions: [],
};

const OFFLINE_HTML = `<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>WASCCEScience — Offline</title>
<style>
*{margin:0;padding:0;box-sizing:border-box}
body{font-family:-apple-system,BlinkMacSystemFont,'Segoe UI',sans-serif;background:#f8fafc;display:flex;align-items:center;justify-content:center;min-height:100vh;padding:16px}
.card{background:#fff;border:1px solid #e2e8f0;border-radius:20px;padding:40px 32px;max-width:360px;width:100%;text-align:center;box-shadow:0 4px 24px rgba(0,0,0,0.06)}
.icon{width:64px;height:64px;background:#eff6ff;border:1px solid #bfdbfe;border-radius:50%;display:flex;align-items:center;justify-content:center;margin:0 auto 20px}
h1{font-size:20px;font-weight:800;color:#0f172a;margin-bottom:8px}
p{font-size:14px;color:#64748b;line-height:1.6;margin-bottom:24px}
button{display:inline-flex;align-items:center;gap:8px;padding:12px 24px;background:#2563eb;color:#fff;border:none;border-radius:12px;font-size:14px;font-weight:700;cursor:pointer;transition:background 0.15s}
button:hover{background:#1d4ed8}
.tip{font-size:12px;color:#94a3b8;margin-top:16px}
</style>
</head>
<body>
<div class="card">
  <div class="icon">
    <svg width="28" height="28" viewBox="0 0 24 24" fill="none" stroke="#2563eb" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
      <line x1="1" y1="1" x2="23" y2="23"/><path d="M16.72 11.06A10.94 10.94 0 0 1 19 12.55"/><path d="M5 12.55a10.94 10.94 0 0 1 5.17-2.39"/><path d="M10.71 5.05A16 16 0 0 1 22.56 9"/><path d="M1.42 9a15.91 15.91 0 0 1 4.7-2.88"/><path d="M8.53 16.11a6 6 0 0 1 6.95 0"/><line x1="12" y1="20" x2="12.01" y2="20"/>
    </svg>
  </div>
  <h1>You're Offline</h1>
  <p>No internet connection. Check your connection and try again. Previously loaded pages may still be available.</p>
  <button onclick="window.location.reload()">
    <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round"><polyline points="1 4 1 10 7 10"/><path d="M3.51 15a9 9 0 1 0 .49-3.38"/></svg>
    Retry
  </button>
  <p class="tip">Tip: Install the app for better offline access</p>
</div>
</body>
</html>`;

self.addEventListener('install', (event) => {
  event.waitUntil(
    caches.open(STATIC_CACHE).then((cache) => {
      return Promise.allSettled(
        STATIC_ASSETS.map(url =>
          cache.add(url).catch(() => {})
        )
      );
    }).then(() => self.skipWaiting())
  );
});

self.addEventListener('activate', (event) => {
  event.waitUntil(
    caches.keys().then((keys) => {
      return Promise.all(
        keys
          .filter((key) => {
            return (
              (key.startsWith('wassce-static-') && key !== STATIC_CACHE) ||
              (key.startsWith('wassce-dynamic-') && key !== DYNAMIC_CACHE) ||
              (key.startsWith('wassce-api-') && key !== API_CACHE)
            );
          })
          .map((key) => caches.delete(key))
      );
    }).then(() => self.clients.claim())
  );
});

function isStaticAsset(url) {
  return CACHE_STRATEGIES.static.some((pattern) => pattern.test(url));
}

function isCacheFirst(url) {
  return CACHE_STRATEGIES.cacheFirst.some((pattern) => pattern.test(url));
}

function isSupabaseApi(url) {
  return CACHE_STRATEGIES.supabaseApi.some((pattern) => pattern.test(url));
}

function isEdgeFunctionCacheable(url) {
  return CACHE_STRATEGIES.edgeFunctions.some((pattern) => pattern.test(url));
}

function isSupabaseAuth(url) {
  return url.includes('/auth/v1/') && !url.includes('/auth/v1/user');
}

async function trimCache(cacheName, maxEntries) {
  const cache = await caches.open(cacheName);
  const keys = await cache.keys();
  if (keys.length > maxEntries) {
    const toDelete = keys.slice(0, keys.length - maxEntries);
    await Promise.all(toDelete.map(key => cache.delete(key)));
  }
}

async function cacheFirst(request, cacheName) {
  const cached = await caches.match(request);
  if (cached) return cached;
  try {
    const networkResponse = await fetch(request.clone());
    if (networkResponse.ok) {
      const cache = await caches.open(cacheName);
      cache.put(request, networkResponse.clone());
    }
    return networkResponse;
  } catch {
    return new Response(OFFLINE_HTML, {
      status: 503,
      headers: { 'Content-Type': 'text/html; charset=utf-8' },
    });
  }
}

async function staleWhileRevalidate(request, cacheName, maxEntries) {
  const cache = await caches.open(cacheName);
  const cached = await cache.match(request);

  const revalidate = fetch(request.clone()).then((networkResponse) => {
    if (networkResponse && networkResponse.ok) {
      cache.put(request, networkResponse.clone());
      if (maxEntries) trimCache(cacheName, maxEntries);
    }
    return networkResponse;
  }).catch(() => null);

  if (cached) {
    return cached;
  }

  const networkResult = await revalidate;
  if (networkResult) return networkResult;

  return new Response(JSON.stringify({ error: 'offline', message: 'No internet connection' }), {
    status: 503,
    headers: { 'Content-Type': 'application/json' },
  });
}

async function networkFirst(request, cacheName) {
  try {
    const networkResponse = await fetch(request.clone());
    if (networkResponse.ok) {
      const cache = await caches.open(cacheName);
      cache.put(request, networkResponse.clone());
    }
    return networkResponse;
  } catch {
    const cached = await caches.match(request);
    if (cached) return cached;
    return new Response(JSON.stringify({ error: 'offline', message: 'No internet connection' }), {
      status: 503,
      headers: { 'Content-Type': 'application/json' },
    });
  }
}

async function htmlHandler(request) {
  const cached = await caches.match('/index.html') || await caches.match('/') || await caches.match(request);

  fetch(request.clone()).then((networkResponse) => {
    if (networkResponse && networkResponse.ok) {
      caches.open(STATIC_CACHE).then((cache) => {
        cache.put(new Request('/index.html'), networkResponse.clone());
        cache.put(new Request('/'), networkResponse.clone());
      });
    }
  }).catch(() => {});

  if (cached) return cached;

  try {
    const networkResponse = await fetch(request);
    if (networkResponse.ok) {
      const cache = await caches.open(STATIC_CACHE);
      cache.put(new Request('/index.html'), networkResponse.clone());
    }
    return networkResponse;
  } catch {
    return new Response(OFFLINE_HTML, {
      status: 503,
      headers: { 'Content-Type': 'text/html; charset=utf-8' },
    });
  }
}

function isAllowedOrigin(url) {
  try {
    const u = new URL(url);
    return ALLOWED_ORIGINS.some(o => url.startsWith(o)) ||
      u.hostname.endsWith('.supabase.co') ||
      u.hostname.endsWith('supabase.io') ||
      u.hostname.endsWith('pexels.com') ||
      u.hostname.endsWith('googleapis.com') ||
      u.hostname.endsWith('gstatic.com') ||
      u.hostname.endsWith('googlesyndication.com') ||
      u.hostname.endsWith('google-analytics.com') ||
      u.hostname.endsWith('googletagmanager.com');
  } catch {
    return false;
  }
}

self.addEventListener('fetch', (event) => {
  const { request } = event;
  const url = request.url;

  if (request.method !== 'GET') return;
  if (url.startsWith('chrome-extension://')) return;
  if (isSupabaseAuth(url)) return;
  if (url.endsWith('/ads.txt') || url.endsWith('/robots.txt') || url.endsWith('/sitemap.xml')) return;

  if (AD_NETWORK_PATTERNS.some(p => url.includes(p))) return;

  if (!isAllowedOrigin(url)) return;

  if (isEdgeFunctionCacheable(url)) {
    event.respondWith(staleWhileRevalidate(request, API_CACHE, MAX_API_CACHE_ENTRIES));
    return;
  }

  if (isSupabaseApi(url)) {
    event.respondWith(staleWhileRevalidate(request, API_CACHE, MAX_API_CACHE_ENTRIES));
    return;
  }

  if (isCacheFirst(url)) {
    event.respondWith(cacheFirst(request, DYNAMIC_CACHE));
    return;
  }

  if (isStaticAsset(url)) {
    event.respondWith(cacheFirst(request, STATIC_CACHE));
    return;
  }

  if (request.headers.get('accept')?.includes('text/html')) {
    event.respondWith(htmlHandler(request));
    return;
  }

  if (url.includes('.supabase.co') || url.includes('.supabase.')) {
    event.respondWith(networkFirst(request, API_CACHE));
    return;
  }

  event.respondWith(staleWhileRevalidate(request, DYNAMIC_CACHE, 150));
});

self.addEventListener('push', (event) => {
  if (!event.data) return;

  let data = {};
  try {
    data = event.data.json();
  } catch {
    data = { title: 'WASCCEScience', body: event.data.text() };
  }

  const options = {
    body: data.body || 'You have a new notification',
    icon: '/icons/icon.svg',
    badge: '/icons/icon.svg',
    vibrate: [100, 50, 100],
    data: { url: data.url || '/' },
    actions: [
      { action: 'open', title: 'Open App' },
      { action: 'dismiss', title: 'Dismiss' },
    ],
    tag: data.tag || 'wassce-notification',
    renotify: true,
  };

  event.waitUntil(
    self.registration.showNotification(data.title || 'WASCCEScience', options)
  );
});

self.addEventListener('notificationclick', (event) => {
  event.notification.close();

  if (event.action === 'dismiss') return;

  const url = event.notification.data?.url || '/';
  event.waitUntil(
    clients.matchAll({ type: 'window', includeUncontrolled: true }).then((windowClients) => {
      for (const client of windowClients) {
        if (client.url === url && 'focus' in client) {
          return client.focus();
        }
      }
      if (clients.openWindow) return clients.openWindow(url);
    })
  );
});

self.addEventListener('message', (event) => {
  if (event.data?.type === 'SKIP_WAITING') {
    self.skipWaiting();
  }
  if (event.data?.type === 'GET_VERSION') {
    event.ports[0]?.postMessage({ version: CACHE_VERSION });
  }
});
