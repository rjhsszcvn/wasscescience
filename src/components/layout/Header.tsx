import { useState, useEffect, useCallback } from 'react';
import { Bell, LogOut, User, Menu, X, BookOpen, LogIn, UserPlus, ChevronDown, Crown } from 'lucide-react';
import { useAuth } from '../../contexts/AuthContext';
import { Page } from '../../lib/types';
import { InstallButton } from '../pwa/InstallButton';

interface HeaderProps {
  currentPage: Page;
  onNavigate: (page: Page) => void;
  unreadNotifications: number;
  onToggleSidebar: () => void;
  sidebarOpen: boolean;
  isGuest?: boolean;
  onSignIn?: () => void;
  onSignUp?: () => void;
}

const PAGE_LABELS: Partial<Record<Page, string>> = {
  dashboard: 'Dashboard',
  subject: 'Subjects',
  hub: 'Student Hub',
  leaderboard: 'Leaderboard',
  research: 'Research',
  profile: 'Profile',
  notifications: 'Notifications',
  premium: 'Premium',
  topic: 'Topic',
  quiz: 'Quiz',
  exam: 'Exam',
};

export default function Header({ currentPage, onNavigate, unreadNotifications, onToggleSidebar, sidebarOpen, isGuest, onSignIn, onSignUp }: HeaderProps) {
  const { profile, signOut, isPremium } = useAuth();
  const [userMenuOpen, setUserMenuOpen] = useState(false);
  const [scrolled, setScrolled] = useState(false);
  const [avatarError, setAvatarError] = useState(false);
  const handleAvatarError = useCallback(() => setAvatarError(true), []);

  useEffect(() => {
    const onScroll = () => setScrolled(window.scrollY > 8);
    window.addEventListener('scroll', onScroll, { passive: true });
    return () => window.removeEventListener('scroll', onScroll);
  }, []);

  const handleLogoClick = () => {
    onNavigate(isGuest ? 'home' : 'dashboard');
  };

  const pageLabel = PAGE_LABELS[currentPage];

  return (
    <header
      className="fixed top-0 left-0 right-0 z-50 border-b transition-all duration-200"
      style={{
        background: scrolled ? 'rgba(255,255,255,0.92)' : 'rgba(255,255,255,0.97)',
        borderColor: scrolled ? 'rgba(226,232,240,0.8)' : 'rgba(226,232,240,0.6)',
        backdropFilter: 'blur(20px) saturate(180%)',
        WebkitBackdropFilter: 'blur(20px) saturate(180%)',
        boxShadow: scrolled ? '0 2px 16px rgba(0,0,0,0.06), 0 1px 4px rgba(0,0,0,0.04)' : '0 1px 3px rgba(0,0,0,0.04)',
      }}
    >
      <div className="flex items-center justify-between h-14 sm:h-[60px] px-2 xs:px-3 sm:px-4 lg:px-6">
        <div className="flex items-center gap-1.5 xs:gap-2">
          <button
            onClick={onToggleSidebar}
            className="p-2.5 rounded-xl text-slate-500 hover:bg-slate-100 active:bg-slate-200 transition-all lg:hidden min-w-[44px] min-h-[44px] flex items-center justify-center"
            aria-label="Toggle menu"
          >
            <div className="relative w-5 h-5 flex items-center justify-center">
              <span className={`absolute transition-all duration-300 ${sidebarOpen ? 'opacity-100 rotate-0' : 'opacity-0 rotate-90'}`}>
                <X size={19} />
              </span>
              <span className={`absolute transition-all duration-300 ${sidebarOpen ? 'opacity-0 -rotate-90' : 'opacity-100 rotate-0'}`}>
                <Menu size={19} />
              </span>
            </div>
          </button>

          <button onClick={handleLogoClick} className="flex items-center gap-2.5 group min-h-[44px]">
            <div
              className="w-8 h-8 xs:w-9 xs:h-9 rounded-xl flex items-center justify-center flex-shrink-0 transition-transform duration-200 group-hover:scale-105"
              style={{ background: 'linear-gradient(135deg, #2563eb, #1d4ed8)', boxShadow: '0 2px 8px rgba(37,99,235,0.3)' }}
            >
              <BookOpen size={16} className="text-white" />
            </div>
            <div className="hidden xs:flex flex-col leading-none">
              <span className="font-black text-slate-900 text-sm sm:text-[15px] tracking-tight leading-tight">
                WASSCE<span className="text-blue-600">Science</span>
              </span>
              {!isGuest && pageLabel && (
                <span className="text-[10px] text-slate-400 font-medium leading-none mt-0.5 hidden sm:block">{pageLabel}</span>
              )}
            </div>
          </button>
        </div>

        <div className="flex items-center gap-0.5 xs:gap-1 sm:gap-1.5">
          <InstallButton variant="header" />

          {isGuest ? (
            <div className="flex items-center gap-1 xs:gap-1.5">
              <button
                onClick={() => onNavigate('subject')}
                className="hidden lg:flex items-center gap-1.5 px-3 py-2 rounded-xl text-slate-600 hover:bg-slate-100 active:bg-slate-200 transition-all text-sm font-semibold min-h-[44px]"
              >
                <BookOpen size={14} />
                Subjects
              </button>
              <button
                onClick={onSignIn}
                className="flex items-center gap-1.5 px-2.5 xs:px-3 py-2 rounded-xl text-slate-600 hover:bg-slate-100 active:bg-slate-200 transition-all text-sm font-semibold min-h-[44px]"
              >
                <LogIn size={15} />
                <span className="hidden sm:inline">Sign In</span>
              </button>
              <button
                onClick={onSignUp}
                className="flex items-center gap-1.5 px-3 xs:px-3.5 sm:px-5 py-2 rounded-xl text-white transition-all text-sm font-bold min-h-[44px] active:scale-95"
                style={{ background: 'linear-gradient(135deg, #2563eb, #1d4ed8)', boxShadow: '0 2px 8px rgba(37,99,235,0.25)' }}
              >
                <UserPlus size={14} className="flex-shrink-0" />
                <span className="hidden sm:inline">Get Started Free</span>
                <span className="sm:hidden text-xs font-bold">Join</span>
              </button>
            </div>
          ) : (
            <>
              {isPremium && (
                <div className="hidden sm:flex items-center gap-1 px-2.5 py-1.5 rounded-xl text-[11px] font-bold border"
                  style={{ background: 'rgba(245,158,11,0.06)', borderColor: 'rgba(245,158,11,0.2)', color: '#92400e' }}>
                  <Crown size={10} className="text-amber-500" />
                  <span>Premium</span>
                </div>
              )}

              {!isPremium && (
                <button
                  onClick={() => onNavigate('premium')}
                  className="hidden md:flex items-center gap-1.5 px-3 py-1.5 rounded-xl text-[11px] font-bold border transition-all hover:scale-[1.02] active:scale-95"
                  style={{ background: 'linear-gradient(135deg, rgba(245,158,11,0.1), rgba(251,191,36,0.08))', borderColor: 'rgba(245,158,11,0.3)', color: '#b45309' }}
                >
                  <Crown size={10} className="text-amber-500" />
                  Upgrade
                </button>
              )}

              <button
                onClick={() => onNavigate('notifications')}
                className="relative p-2.5 rounded-xl text-slate-500 hover:bg-slate-100 active:bg-slate-200 transition-all min-w-[44px] min-h-[44px] flex items-center justify-center"
                aria-label="Notifications"
              >
                <Bell size={18} />
                {unreadNotifications > 0 && (
                  <span
                    className="absolute top-1.5 right-1.5 flex items-center justify-center font-black leading-none text-white rounded-full"
                    style={{
                      width: '17px', height: '17px', fontSize: '8.5px',
                      background: 'linear-gradient(135deg, #ef4444, #dc2626)',
                      boxShadow: '0 1px 4px rgba(220,38,38,0.4)',
                    }}
                  >
                    {unreadNotifications > 9 ? '9+' : unreadNotifications}
                  </span>
                )}
              </button>

              <div className="relative">
                <button
                  onClick={() => setUserMenuOpen(!userMenuOpen)}
                  className="flex items-center gap-1.5 sm:gap-2 p-1.5 rounded-xl hover:bg-slate-100 active:bg-slate-200 transition-all min-h-[44px]"
                >
                  <div
                    className="w-8 h-8 xs:w-[34px] xs:h-[34px] rounded-full flex-shrink-0 overflow-hidden"
                    style={{ boxShadow: '0 0 0 2px #e2e8f0, 0 0 0 3px white' }}
                  >
                    {profile?.avatar_url && !avatarError ? (
                      <img src={profile.avatar_url} alt={profile.display_name || 'User'} className="w-full h-full object-cover" onError={handleAvatarError} />
                    ) : (
                      <div
                        className="w-full h-full flex items-center justify-center text-white font-black text-sm"
                        style={{ background: 'linear-gradient(135deg, #2563eb, #1d4ed8)' }}
                      >
                        {profile?.display_name?.[0]?.toUpperCase() || 'S'}
                      </div>
                    )}
                  </div>
                  <div className="hidden md:flex flex-col text-left max-w-[100px] lg:max-w-[130px]">
                    <p className="text-[13px] font-bold text-slate-800 leading-none truncate">{profile?.display_name || 'Student'}</p>
                    <p className="text-[11px] text-slate-400 leading-none mt-0.5 truncate">{profile?.country || 'West Africa'}</p>
                  </div>
                  <ChevronDown size={13} className={`hidden md:block text-slate-400 flex-shrink-0 transition-transform duration-200 ${userMenuOpen ? 'rotate-180' : ''}`} />
                </button>

                {userMenuOpen && (
                  <>
                    <div className="fixed inset-0 z-40" onClick={() => setUserMenuOpen(false)} />
                    <div
                      className="absolute right-0 top-full mt-2 w-56 bg-white rounded-2xl z-50 overflow-hidden animate-fade-up"
                      style={{ boxShadow: '0 20px 60px -10px rgba(0,0,0,0.15), 0 4px 16px -4px rgba(0,0,0,0.08)', border: '1px solid rgba(226,232,240,0.8)' }}
                    >
                      <div className="px-4 py-3.5 border-b border-slate-100">
                        <div className="flex items-center gap-3 mb-2">
                          <div
                            className="w-10 h-10 rounded-full overflow-hidden flex-shrink-0"
                            style={{ boxShadow: '0 0 0 2px #e2e8f0' }}
                          >
                            {profile?.avatar_url && !avatarError ? (
                              <img src={profile.avatar_url} alt="" className="w-full h-full object-cover" onError={handleAvatarError} />
                            ) : (
                              <div
                                className="w-full h-full flex items-center justify-center text-white font-black text-sm"
                                style={{ background: 'linear-gradient(135deg, #2563eb, #1d4ed8)' }}
                              >
                                {profile?.display_name?.[0]?.toUpperCase() || 'S'}
                              </div>
                            )}
                          </div>
                          <div className="min-w-0">
                            <p className="text-sm font-black text-slate-900 truncate leading-tight">{profile?.display_name || 'Student'}</p>
                            <p className="text-xs text-slate-400 truncate mt-0.5">{profile?.country || 'West Africa'}</p>
                          </div>
                        </div>
                        <div className="flex items-center gap-1.5 mt-1.5">
                          {isPremium ? (
                            <span
                              className="inline-flex items-center gap-1 text-[10px] font-black px-2 py-0.5 rounded-full"
                              style={{ background: 'rgba(245,158,11,0.1)', color: '#92400e', border: '1px solid rgba(245,158,11,0.2)' }}
                            >
                              <Crown size={9} className="text-amber-500" /> Premium
                            </span>
                          ) : (
                            <span
                              className="inline-flex items-center gap-1 text-[10px] font-bold px-2 py-0.5 rounded-full"
                              style={{ background: 'rgba(37,99,235,0.08)', color: '#1d4ed8', border: '1px solid rgba(37,99,235,0.15)' }}
                            >
                              Free Plan
                            </span>
                          )}
                        </div>
                        <p className="text-[11px] text-slate-400 truncate mt-1.5">{profile?.email}</p>
                      </div>
                      <div className="py-1.5">
                        <button
                          onClick={() => { onNavigate('profile'); setUserMenuOpen(false); }}
                          className="w-full flex items-center gap-2.5 px-4 py-2.5 text-sm text-slate-700 hover:bg-slate-50 active:bg-slate-100 transition-colors min-h-[44px] font-medium"
                        >
                          <User size={14} className="text-slate-400" /> My Profile
                        </button>
                        {!isPremium && (
                          <button
                            onClick={() => { onNavigate('premium'); setUserMenuOpen(false); }}
                            className="w-full flex items-center gap-2.5 px-4 py-2.5 text-sm font-medium min-h-[44px] transition-colors hover:bg-amber-50"
                            style={{ color: '#92400e' }}
                          >
                            <Crown size={14} className="text-amber-500" /> Upgrade to Premium
                          </button>
                        )}
                        <hr className="my-1 border-slate-100" />
                        <button
                          onClick={async () => { setUserMenuOpen(false); await signOut(); onNavigate('home'); }}
                          className="w-full flex items-center gap-2.5 px-4 py-2.5 text-sm text-red-500 hover:bg-red-50 active:bg-red-100 transition-colors min-h-[44px] font-medium"
                        >
                          <LogOut size={14} /> Sign Out
                        </button>
                      </div>
                    </div>
                  </>
                )}
              </div>
            </>
          )}
        </div>
      </div>
    </header>
  );
}
