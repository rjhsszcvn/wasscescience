import { memo } from 'react';
import { LayoutDashboard, BookOpen, Users, Bell, LogIn, Trophy, Brain } from 'lucide-react';
import { Page } from '../../lib/types';

type AuthPromptReason = 'progress' | 'quiz' | 'hub' | 'leaderboard' | 'notifications' | 'dashboard' | 'general';

interface BottomNavProps {
  currentPage: Page;
  onNavigate: (page: Page) => void;
  unreadNotifications?: number;
  isGuest?: boolean;
  onAuthPrompt?: (reason: AuthPromptReason) => void;
}

const GUEST_NAV_ITEMS = [
  { icon: BookOpen, label: 'Subjects', page: 'subject' as Page, guestAllowed: true, reason: null },
  { icon: Trophy, label: 'Ranks', page: 'leaderboard' as Page, guestAllowed: false, reason: 'leaderboard' as AuthPromptReason },
  { icon: Users, label: 'Hub', page: 'hub' as Page, guestAllowed: false, reason: 'hub' as AuthPromptReason },
  { icon: LogIn, label: 'Sign In', page: 'home' as Page, guestAllowed: true, reason: null, isSignIn: true },
];

const LEFT_NAV_ITEMS = [
  { icon: LayoutDashboard, label: 'Home', page: 'dashboard' as Page, badge: false },
  { icon: BookOpen, label: 'Subjects', page: 'subject' as Page, badge: false },
];

const RIGHT_NAV_ITEMS = [
  { icon: Users, label: 'Hub', page: 'hub' as Page, badge: false },
  { icon: Bell, label: 'Alerts', page: 'notifications' as Page, badge: true },
];

const BottomNav = memo(function BottomNav({ currentPage, onNavigate, unreadNotifications = 0, isGuest, onAuthPrompt }: BottomNavProps) {
  if (isGuest) {
    return (
      <nav
        className="fixed bottom-0 left-0 right-0 z-50 lg:hidden glass border-t border-slate-200/60"
        style={{ paddingBottom: 'env(safe-area-inset-bottom, 0px)', width: '100%', maxWidth: '100vw', boxSizing: 'border-box', margin: 0 }}
      >
        <div className="flex items-stretch" style={{ height: '3.75rem', width: '100%' }}>
          {GUEST_NAV_ITEMS.map(({ icon: Icon, label, page, guestAllowed, reason, isSignIn }) => {
            const isActive = currentPage === page || (page === 'subject' && (currentPage === 'topic' || currentPage === 'quiz' || currentPage === 'exam'));

            const handleClick = () => {
              if (isSignIn) { onAuthPrompt?.('general'); return; }
              if (!guestAllowed && reason) { onAuthPrompt?.(reason); return; }
              onNavigate(page);
            };

            return (
              <button
                key={label}
                onClick={handleClick}
                className={`flex-1 min-w-0 flex flex-col items-center justify-center gap-0.5 relative transition-all active:scale-95 ${
                  isActive ? 'text-blue-600' : isSignIn ? 'text-blue-500' : 'text-slate-400'
                }`}
                aria-label={label}
              >
                {isActive && (
                  <span className="absolute inset-x-6 top-0 h-0.5 rounded-full bg-blue-600" style={{ animation: 'nav-indicator 0.2s ease-out' }} />
                )}
                <div className={`w-9 h-7 flex items-center justify-center rounded-xl transition-all duration-200 ${isActive ? 'bg-blue-50 scale-110' : ''}`}>
                  <Icon size={19} strokeWidth={isActive ? 2.5 : 1.8} className={isActive ? 'text-blue-600' : isSignIn ? 'text-blue-500' : 'text-slate-400'} />
                </div>
                <span className={`text-[9.5px] font-semibold leading-none tracking-tight ${isActive ? 'text-blue-600' : isSignIn ? 'text-blue-500' : 'text-slate-400'}`}>
                  {label}
                </span>
              </button>
            );
          })}
        </div>
      </nav>
    );
  }

  const isMentorActive = currentPage === 'mentor';

  return (
    <nav
      className="fixed bottom-0 left-0 right-0 z-50 lg:hidden glass border-t border-slate-200/60"
      style={{ paddingBottom: 'env(safe-area-inset-bottom, 0px)', width: '100%', maxWidth: '100vw', boxSizing: 'border-box', margin: 0 }}
    >
      <div className="flex items-stretch" style={{ height: '3.75rem', width: '100%' }}>
        {LEFT_NAV_ITEMS.map(({ icon: Icon, label, page }) => {
          const isActive =
            currentPage === page ||
            (page === 'subject' && (currentPage === 'topic' || currentPage === 'quiz' || currentPage === 'exam'));

          return (
            <button
              key={page}
              onClick={() => onNavigate(page)}
              className={`flex-1 min-w-0 flex flex-col items-center justify-center gap-0.5 relative transition-all active:scale-95 ${
                isActive ? 'text-blue-600' : 'text-slate-400'
              }`}
              aria-label={label}
            >
              {isActive && (
                <span className="absolute inset-x-6 top-0 h-0.5 rounded-full bg-blue-600" style={{ animation: 'nav-indicator 0.2s ease-out' }} />
              )}
              <div className={`w-9 h-7 flex items-center justify-center rounded-xl transition-all duration-200 ${isActive ? 'bg-blue-50 scale-110' : ''}`}>
                <Icon size={19} strokeWidth={isActive ? 2.5 : 1.8} className={isActive ? 'text-blue-600' : 'text-slate-400'} />
              </div>
              <span className={`text-[9.5px] font-semibold leading-none tracking-tight ${isActive ? 'text-blue-600' : 'text-slate-400'}`}>{label}</span>
            </button>
          );
        })}

        <button
          onClick={() => onNavigate('mentor')}
          className="relative flex flex-col items-center justify-end pb-1 flex-shrink-0 transition-all active:scale-90"
          style={{ width: '4.5rem', height: '3.75rem' }}
          aria-label="MentorX"
        >
          <div
            className={`absolute w-12 h-12 rounded-2xl flex items-center justify-center shadow-md transition-all duration-200 ${
              isMentorActive ? 'scale-105' : ''
            }`}
            style={{
              top: '-10px',
              background: 'linear-gradient(135deg, #f59e0b, #f97316)',
              boxShadow: isMentorActive
                ? '0 4px 20px rgba(245,158,11,0.6), 0 0 0 3px rgba(245,158,11,0.2)'
                : '0 3px 14px rgba(245,158,11,0.45)',
            }}
          >
            <Brain size={19} className="text-white" strokeWidth={2} />
            {!isMentorActive && (
              <span className="absolute -top-0.5 -right-0.5 w-2.5 h-2.5 bg-white rounded-full flex items-center justify-center">
                <span className="w-1.5 h-1.5 bg-amber-400 rounded-full animate-pulse" />
              </span>
            )}
          </div>
          <span className={`text-[9.5px] font-black leading-none tracking-tight mt-auto ${isMentorActive ? 'text-amber-500' : 'text-amber-500'}`}>
            MentorX
          </span>
        </button>

        {RIGHT_NAV_ITEMS.map(({ icon: Icon, label, page, badge }) => {
          const isActive =
            currentPage === page ||
            (page === 'hub' && currentPage === 'hub-post');

          const hasNotification = badge && unreadNotifications > 0;

          return (
            <button
              key={page}
              onClick={() => onNavigate(page)}
              className={`flex-1 min-w-0 flex flex-col items-center justify-center gap-0.5 relative transition-all active:scale-95 ${
                isActive ? 'text-blue-600' : 'text-slate-400'
              }`}
              aria-label={label}
            >
              {isActive && (
                <span className="absolute inset-x-6 top-0 h-0.5 rounded-full bg-blue-600" style={{ animation: 'nav-indicator 0.2s ease-out' }} />
              )}
              <div className={`w-9 h-7 flex items-center justify-center rounded-xl transition-all duration-200 relative ${isActive ? 'bg-blue-50 scale-110' : ''}`}>
                <Icon size={19} strokeWidth={isActive ? 2.5 : 1.8} className={isActive ? 'text-blue-600' : 'text-slate-400'} />
                {hasNotification && (
                  <span className="absolute -top-1 -right-1.5 w-[15px] h-[15px] bg-red-500 text-white text-[8px] rounded-full flex items-center justify-center font-black leading-none shadow-sm">
                    {unreadNotifications > 9 ? '9+' : unreadNotifications}
                  </span>
                )}
              </div>
              <span className={`text-[9.5px] font-semibold leading-none tracking-tight ${isActive ? 'text-blue-600' : 'text-slate-400'}`}>{label}</span>
            </button>
          );
        })}
      </div>
    </nav>
  );
});

export default BottomNav;
