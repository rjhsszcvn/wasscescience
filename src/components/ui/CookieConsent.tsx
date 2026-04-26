import { useState, useEffect } from 'react';
import { Cookie, X, ExternalLink } from 'lucide-react';

const STORAGE_KEY = 'ws_cookie_consent';

interface CookieConsentProps {
  onNavigate?: (page: string) => void;
}

export default function CookieConsent({ onNavigate }: CookieConsentProps) {
  const [visible, setVisible] = useState(false);

  useEffect(() => {
    const stored = localStorage.getItem(STORAGE_KEY);
    if (!stored) {
      const timer = setTimeout(() => setVisible(true), 1500);
      return () => clearTimeout(timer);
    }
  }, []);

  const accept = () => {
    localStorage.setItem(STORAGE_KEY, 'accepted');
    setVisible(false);
  };

  const dismiss = () => {
    localStorage.setItem(STORAGE_KEY, 'dismissed');
    setVisible(false);
  };

  if (!visible) return null;

  return (
    <div className="fixed bottom-0 left-0 right-0 z-[100] p-4 sm:p-5 lg:pb-6">
      <div className="max-w-3xl mx-auto bg-slate-900 border border-slate-700 rounded-2xl shadow-2xl shadow-black/40 p-4 sm:p-5">
        <div className="flex items-start gap-4">
          <div className="w-9 h-9 bg-blue-600/20 border border-blue-500/30 rounded-xl flex items-center justify-center flex-shrink-0 mt-0.5">
            <Cookie size={17} className="text-blue-400" />
          </div>
          <div className="flex-1 min-w-0">
            <p className="text-sm font-semibold text-white mb-1">We use cookies</p>
            <p className="text-xs text-slate-400 leading-relaxed">
              We use cookies to keep you signed in and track your learning progress.
              By continuing, you agree to our{' '}
              <button
                onClick={() => { onNavigate?.('privacy'); dismiss(); }}
                className="text-blue-400 hover:text-blue-300 underline underline-offset-2 transition-colors"
              >
                Privacy Policy
                <ExternalLink size={10} className="inline ml-0.5 -mt-0.5" />
              </button>
              .
            </p>
          </div>
          <button
            onClick={dismiss}
            className="p-1.5 rounded-lg text-slate-500 hover:text-slate-300 hover:bg-slate-800 transition-colors flex-shrink-0"
            aria-label="Dismiss"
          >
            <X size={16} />
          </button>
        </div>
        <div className="flex items-center gap-3 mt-4 pl-13">
          <button
            onClick={accept}
            className="flex-1 sm:flex-none px-5 py-2 bg-blue-600 hover:bg-blue-500 text-white text-xs font-bold rounded-xl transition-colors"
          >
            Accept All
          </button>
          <button
            onClick={dismiss}
            className="flex-1 sm:flex-none px-5 py-2 bg-slate-800 hover:bg-slate-700 text-slate-300 text-xs font-semibold rounded-xl transition-colors"
          >
            Dismiss
          </button>
        </div>
      </div>
    </div>
  );
}
