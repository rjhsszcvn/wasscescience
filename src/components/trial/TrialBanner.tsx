import { Crown, Sparkles } from 'lucide-react';
import { useAuth } from '../../contexts/AuthContext';
import { Page } from '../../lib/types';

interface TrialBannerProps {
  onNavigate: (page: Page) => void;
}

export default function TrialBanner({ onNavigate }: TrialBannerProps) {
  const { isPremium, isGuest } = useAuth();

  if (isPremium || isGuest) return null;

  return (
    <div
      className="relative flex items-center gap-3 px-4 py-3.5 rounded-2xl border bg-gradient-to-r from-amber-50 to-orange-50 border-amber-200/80 transition-all"
      style={{ boxShadow: '0 2px 12px rgba(245,158,11,0.1), 0 1px 3px rgba(0,0,0,0.04)' }}
    >
      <div
        className="w-10 h-10 rounded-xl flex items-center justify-center flex-shrink-0 bg-gradient-to-br from-amber-500 to-orange-500"
        style={{ boxShadow: '0 4px 10px rgba(245,158,11,0.3)' }}
      >
        <Sparkles size={16} className="text-white" />
      </div>

      <div className="flex-1 min-w-0">
        <p className="text-sm font-black leading-snug text-amber-900">
          Upgrade to access all subjects
        </p>
        <p className="text-xs mt-0.5 leading-relaxed text-amber-700/80">
          Premium gives you the full WASSCE preparation experience.
        </p>
      </div>

      <button
        onClick={() => onNavigate('premium')}
        className="flex items-center gap-1.5 px-4 py-2.5 text-white text-xs font-black rounded-xl transition-all active:scale-95 whitespace-nowrap flex-shrink-0 bg-gradient-to-br from-amber-500 to-orange-500 hover:from-amber-400 hover:to-orange-400"
        style={{ boxShadow: '0 4px 12px rgba(245,158,11,0.35)' }}
      >
        <Crown size={11} />
        Upgrade
      </button>
    </div>
  );
}
