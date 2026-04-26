import { useEffect, useRef, useState } from 'react';
import { X, Crown, Sparkles, Zap } from 'lucide-react';
import { useAuth } from '../../contexts/AuthContext';
import { Page } from '../../lib/types';

declare global {
  interface Window {
    adsbygoogle?: { push: (config: object) => void }[];
  }
}

interface AdBannerProps {
  onNavigate: (page: Page) => void;
  variant?: 'inline' | 'sticky-bottom';
}

const PROMO_MESSAGES = [
  {
    headline: 'Ace your WASSCE',
    sub: 'Join 10,000+ students using premium study tools.',
    cta: 'Try Premium',
  },
  {
    headline: 'Study smarter, not harder',
    sub: 'Unlock MentorX AI + all 11 subjects for just $12/year.',
    cta: 'Upgrade Now',
  },
  {
    headline: 'Remove all ads forever',
    sub: 'Upgrade to Premium for a clean, ad-free experience.',
    cta: 'Go Ad-Free',
  },
];

function AdsenseUnit({
  slot,
  format = 'auto',
  style,
}: {
  slot: string;
  format?: string;
  style?: React.CSSProperties;
}) {
  const pushed = useRef(false);
  const insRef = useRef<HTMLModElement>(null);

  useEffect(() => {
    if (pushed.current) return;
    pushed.current = true;
    try {
      (window.adsbygoogle = window.adsbygoogle || []).push({});
    } catch {
      /* adsense blocked or not loaded */
    }
  }, []);

  return (
    <ins
      ref={insRef}
      className="adsbygoogle"
      style={{ display: 'block', overflow: 'hidden', ...style }}
      data-ad-client="ca-pub-9121922395304175"
      data-ad-slot={slot}
      data-ad-format={format}
      data-full-width-responsive="true"
    />
  );
}

export function AdBanner({ onNavigate, variant = 'inline' }: AdBannerProps) {
  const { isPremium } = useAuth();
  const [dismissed, setDismissed] = useState(false);
  const [msgIdx] = useState(() => Math.floor(Math.random() * PROMO_MESSAGES.length));

  if (isPremium || dismissed) return null;

  const msg = PROMO_MESSAGES[msgIdx];

  if (variant === 'sticky-bottom') {
    return (
      <div
        className="fixed bottom-[calc(3.75rem+env(safe-area-inset-bottom,0px))] left-0 right-0 z-20 lg:ml-[17rem] px-3 pb-1 pointer-events-none"
        role="complementary"
        aria-label="Upgrade to Premium"
      >
        <div
          className="pointer-events-auto rounded-xl overflow-hidden flex items-center gap-2.5 px-3 py-2.5"
          style={{
            background: 'linear-gradient(135deg, #1e293b, #0f172a)',
            boxShadow: '0 -2px 16px rgba(0,0,0,0.18)',
            border: '1px solid rgba(251,191,36,0.15)',
            maxHeight: 52,
          }}
        >
          <div className="w-7 h-7 bg-amber-400/15 rounded-lg flex items-center justify-center flex-shrink-0">
            <Zap size={13} className="text-amber-400" />
          </div>
          <div className="flex-1 min-w-0">
            <p className="text-white text-[11px] font-bold truncate leading-tight">{msg.headline}</p>
            <p className="text-slate-400 text-[10px] truncate leading-tight">{msg.sub}</p>
          </div>
          <button
            onClick={() => onNavigate('premium')}
            className="flex-shrink-0 px-2.5 py-1 bg-amber-400 hover:bg-amber-300 text-slate-900 text-[10px] font-black rounded-md transition-colors"
          >
            {msg.cta}
          </button>
          <button
            onClick={() => setDismissed(true)}
            className="flex-shrink-0 p-1 text-slate-500 hover:text-slate-300 transition-colors"
            aria-label="Dismiss"
          >
            <X size={12} />
          </button>
        </div>
      </div>
    );
  }

  return (
    <div
      className="rounded-xl overflow-hidden mb-4"
      style={{ border: '1px solid rgba(251,191,36,0.2)', background: 'linear-gradient(135deg, #fffbeb, #fef3c7)' }}
      role="complementary"
      aria-label="Upgrade to Premium"
    >
      <div className="flex items-center gap-3 px-4 py-3">
        <div className="w-8 h-8 bg-amber-100 border border-amber-200 rounded-lg flex items-center justify-center flex-shrink-0">
          <Crown size={14} className="text-amber-600" />
        </div>
        <div className="flex-1 min-w-0">
          <div className="flex items-center gap-1 mb-0.5">
            <Sparkles size={9} className="text-amber-500" />
            <p className="text-[9px] font-bold text-amber-700 uppercase tracking-wider">Premium</p>
          </div>
          <p className="text-slate-800 text-xs font-semibold leading-tight">{msg.headline}</p>
          <p className="text-slate-500 text-[10px] mt-0.5 leading-tight">{msg.sub}</p>
        </div>
        <div className="flex items-center gap-1.5 flex-shrink-0">
          <button
            onClick={() => onNavigate('premium')}
            className="px-2.5 py-1.5 bg-amber-500 hover:bg-amber-600 text-white text-[10px] font-bold rounded-lg transition-colors"
          >
            {msg.cta}
          </button>
          <button
            onClick={() => setDismissed(true)}
            className="p-1 text-slate-400 hover:text-slate-600 transition-colors"
            aria-label="Dismiss"
          >
            <X size={12} />
          </button>
        </div>
      </div>
    </div>
  );
}

export function AdStrip({ onNavigate }: { onNavigate: (page: Page) => void }) {
  const { isPremium } = useAuth();
  const [adDismissed, setAdDismissed] = useState(false);

  if (isPremium || adDismissed) return null;

  return (
    <div className="mb-5" role="complementary" aria-label="Advertisement">
      <div className="relative rounded-xl overflow-hidden bg-slate-50 border border-slate-200">
        <div className="flex items-center justify-between px-3 py-1 bg-slate-100 border-b border-slate-200">
          <span className="text-[9px] font-semibold text-slate-400 uppercase tracking-widest">Advertisement</span>
          <button
            onClick={() => setAdDismissed(true)}
            className="p-0.5 text-slate-400 hover:text-slate-600 transition-colors rounded"
            aria-label="Close ad"
          >
            <X size={10} />
          </button>
        </div>
        <div className="px-2 py-2">
          <AdsenseUnit
            slot="3524885735"
            format="auto"
            style={{ minHeight: 90, width: '100%' }}
          />
        </div>
      </div>
      <div className="mt-1.5 text-center">
        <button
          onClick={() => onNavigate('premium')}
          className="text-[10px] text-slate-400 hover:text-amber-600 transition-colors"
        >
          Remove ads — Upgrade to Premium $12/yr
        </button>
      </div>
    </div>
  );
}

export function AdUnit({ slot }: { slot: string }) {
  const { isPremium } = useAuth();
  const [dismissed, setDismissed] = useState(false);

  if (isPremium || dismissed) return null;

  return (
    <div className="my-4 rounded-xl overflow-hidden bg-slate-50 border border-slate-200" role="complementary" aria-label="Advertisement">
      <div className="flex items-center justify-between px-3 py-1 bg-slate-100 border-b border-slate-200">
        <span className="text-[9px] font-semibold text-slate-400 uppercase tracking-widest">Advertisement</span>
        <button
          onClick={() => setDismissed(true)}
          className="p-0.5 text-slate-400 hover:text-slate-600 transition-colors rounded"
          aria-label="Close ad"
        >
          <X size={10} />
        </button>
      </div>
      <div className="p-2">
        <AdsenseUnit slot={slot} format="auto" style={{ minHeight: 100, width: '100%' }} />
      </div>
    </div>
  );
}
