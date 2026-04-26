import { StrictMode } from 'react';
import { createRoot } from 'react-dom/client';
import App from './App.tsx';
import './index.css';

if ('serviceWorker' in navigator) {
  window.addEventListener('load', () => {
    navigator.serviceWorker
      .register('/sw.js', { scope: '/' })
      .then((registration) => {
        registration.addEventListener('updatefound', () => {
          const newWorker = registration.installing;
          if (!newWorker) return;
          newWorker.addEventListener('statechange', () => {
            if (newWorker.state === 'installed' && navigator.serviceWorker.controller) {
              showUpdateBanner();
            }
          });
        });
      })
      .catch(() => {});
  });
}

function showUpdateBanner() {
  if (document.getElementById('sw-update-banner')) return;

  const banner = document.createElement('div');
  banner.id = 'sw-update-banner';
  banner.style.cssText = `
    position:fixed;bottom:80px;left:50%;transform:translateX(-50%);
    z-index:9999;display:flex;align-items:center;gap:12px;
    background:#0f172a;border:1px solid rgba(255,255,255,0.1);
    border-radius:16px;padding:12px 16px;
    box-shadow:0 20px 60px rgba(0,0,0,0.5),0 0 0 1px rgba(255,255,255,0.05);
    max-width:calc(100vw - 32px);width:max-content;
    animation:swBannerIn 0.4s cubic-bezier(0.34,1.56,0.64,1) both;
    font-family:-apple-system,BlinkMacSystemFont,'Segoe UI',sans-serif;
  `;

  const style = document.createElement('style');
  style.textContent = `@keyframes swBannerIn{from{opacity:0;transform:translateX(-50%) translateY(16px)}to{opacity:1;transform:translateX(-50%) translateY(0)}}`;
  document.head.appendChild(style);

  banner.innerHTML = `
    <div style="width:32px;height:32px;border-radius:10px;background:linear-gradient(135deg,#1d4ed8,#2563eb);display:flex;align-items:center;justify-content:center;flex-shrink:0;">
      <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="white" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"><polyline points="1 4 1 10 7 10"/><path d="M3.51 15a9 9 0 1 0 .49-3.38"/></svg>
    </div>
    <div style="flex:1;min-width:0;">
      <p style="margin:0;font-size:13px;font-weight:700;color:#f1f5f9;line-height:1.2;">Update Available</p>
      <p style="margin:2px 0 0;font-size:11px;color:#64748b;line-height:1.3;">Refresh for the latest version</p>
    </div>
    <button id="sw-update-btn" style="flex-shrink:0;padding:7px 14px;background:#2563eb;color:white;border:none;border-radius:10px;font-size:12px;font-weight:700;cursor:pointer;transition:background 0.15s;white-space:nowrap;">Refresh</button>
    <button id="sw-dismiss-btn" style="flex-shrink:0;min-width:32px;min-height:32px;padding:0;background:transparent;border:none;color:#475569;cursor:pointer;display:flex;align-items:center;justify-content:center;border-radius:8px;">
      <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round"><line x1="18" y1="6" x2="6" y2="18"/><line x1="6" y1="6" x2="18" y2="18"/></svg>
    </button>
  `;

  document.body.appendChild(banner);

  document.getElementById('sw-update-btn')?.addEventListener('click', () => {
    navigator.serviceWorker.controller?.postMessage({ type: 'SKIP_WAITING' });
    window.location.reload();
  });

  document.getElementById('sw-dismiss-btn')?.addEventListener('click', () => {
    banner.style.opacity = '0';
    banner.style.transform = 'translateX(-50%) translateY(12px)';
    banner.style.transition = 'opacity 0.25s ease, transform 0.25s ease';
    setTimeout(() => banner.remove(), 280);
  });

  setTimeout(() => {
    if (document.getElementById('sw-update-banner')) {
      banner.style.opacity = '0';
      banner.style.transform = 'translateX(-50%) translateY(12px)';
      banner.style.transition = 'opacity 0.3s ease, transform 0.3s ease';
      setTimeout(() => banner.remove(), 320);
    }
  }, 12000);
}

const rootEl = document.getElementById('root')!;

try {
  createRoot(rootEl).render(
    <StrictMode>
      <App />
    </StrictMode>
  );
} catch {
  const hide = (window as Window & { __hideSplash?: () => void }).__hideSplash;
  if (hide) hide();
}
