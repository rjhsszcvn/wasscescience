import { useState, useEffect, useRef } from 'react';

interface BeforeInstallPromptEvent extends Event {
  readonly platforms: string[];
  readonly userChoice: Promise<{ outcome: 'accepted' | 'dismissed'; platform: string }>;
  prompt(): Promise<void>;
}

declare global {
  interface Window {
    __pwaInstallPrompt?: BeforeInstallPromptEvent | null;
    __pwaPromptConsumed?: boolean;
    __pwaInstallListeners?: Array<(e: BeforeInstallPromptEvent) => void>;
  }
}

if (typeof window !== 'undefined' && !window.__pwaInstallListeners) {
  window.__pwaInstallListeners = [];
  window.__pwaPromptConsumed = false;

  window.addEventListener('beforeinstallprompt', (e) => {
    e.preventDefault();
    const prompt = e as BeforeInstallPromptEvent;
    window.__pwaInstallPrompt = prompt;
    window.__pwaPromptConsumed = false;
    const listeners = window.__pwaInstallListeners ?? [];
    window.__pwaInstallListeners = [];
    listeners.forEach((cb) => cb(prompt));
  });
}

interface PWAInstallState {
  canInstall: boolean;
  hasNativePrompt: boolean;
  isInstalled: boolean;
  isIOS: boolean;
  isAndroid: boolean;
  install: () => Promise<'installed' | 'dismissed' | 'guide'>;
}

export function usePWAInstall(): PWAInstallState {
  const [deferredPrompt, setDeferredPrompt] = useState<BeforeInstallPromptEvent | null>(
    () => (window.__pwaInstallPrompt && !window.__pwaPromptConsumed) ? window.__pwaInstallPrompt : null
  );
  const [isInstalled, setIsInstalled] = useState(() => {
    return (
      window.matchMedia('(display-mode: standalone)').matches ||
      (navigator as Navigator & { standalone?: boolean }).standalone === true
    );
  });

  const promptRef = useRef(deferredPrompt);
  promptRef.current = deferredPrompt;

  const ua = navigator.userAgent;
  const isIOS = /iphone|ipad|ipod/i.test(ua) && !(window as Window & { MSStream?: unknown }).MSStream;
  const isAndroid = /android/i.test(ua);

  useEffect(() => {
    if (isInstalled) return;

    if (window.__pwaInstallPrompt && !window.__pwaPromptConsumed) {
      setDeferredPrompt(window.__pwaInstallPrompt);
    }

    const onPrompt = (prompt: BeforeInstallPromptEvent) => {
      setDeferredPrompt(prompt);
    };

    if (window.__pwaInstallListeners) {
      window.__pwaInstallListeners.push(onPrompt);
    }

    const onInstalled = () => {
      setIsInstalled(true);
      setDeferredPrompt(null);
      window.__pwaInstallPrompt = null;
      window.__pwaPromptConsumed = true;
    };
    window.addEventListener('appinstalled', onInstalled);

    return () => {
      if (window.__pwaInstallListeners) {
        window.__pwaInstallListeners = window.__pwaInstallListeners.filter((cb) => cb !== onPrompt);
      }
      window.removeEventListener('appinstalled', onInstalled);
    };
  }, [isInstalled]);

  const install = async (): Promise<'installed' | 'dismissed' | 'guide'> => {
    if (isIOS) return 'guide';

    let prompt = promptRef.current ?? ((!window.__pwaPromptConsumed && window.__pwaInstallPrompt) ? window.__pwaInstallPrompt : null);

    if (!prompt) {
      prompt = await new Promise<BeforeInstallPromptEvent | null>((resolve) => {
        const timeout = setTimeout(() => resolve(null), 3000);
        const listener = (p: BeforeInstallPromptEvent) => {
          clearTimeout(timeout);
          resolve(p);
        };
        if (window.__pwaInstallListeners) {
          window.__pwaInstallListeners.push(listener);
        } else {
          resolve(null);
        }
      });
    }

    if (!prompt) return 'guide';

    try {
      window.__pwaPromptConsumed = true;
      await prompt.prompt();
      const { outcome } = await prompt.userChoice;
      setDeferredPrompt(null);
      window.__pwaInstallPrompt = null;
      if (outcome === 'accepted') {
        return 'installed';
      }
      window.__pwaPromptConsumed = false;
      return 'dismissed';
    } catch {
      window.__pwaPromptConsumed = false;
      return 'guide';
    }
  };

  const hasNativePrompt = !!(deferredPrompt ?? ((!window.__pwaPromptConsumed && window.__pwaInstallPrompt) ? window.__pwaInstallPrompt : null));

  return {
    canInstall: !isInstalled,
    hasNativePrompt,
    isInstalled,
    isIOS,
    isAndroid,
    install,
  };
}
