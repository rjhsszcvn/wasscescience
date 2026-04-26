import { memo } from 'react';
import { LayoutDashboard, BookOpen, Trophy, Users, ChevronRight, Bell, Info, Shield, FileText, Mail, Crown, Search, MessageCircle, ClipboardList, Lightbulb, BookMarked, HelpCircle, Brain } from 'lucide-react';
import { useAuth } from '../../contexts/AuthContext';
import { Page } from '../../lib/types';
import { InstallButton } from '../pwa/InstallButton';

interface SidebarProps {
  currentPage: Page;
  onNavigate: (page: Page) => void;
  onNavigateStatic?: (page: string) => void;
  isOpen: boolean;
  onClose: () => void;
  unreadNotifications?: number;
}

const Sidebar = memo(function Sidebar({ currentPage, onNavigate, onNavigateStatic, isOpen, onClose, unreadNotifications = 0 }: SidebarProps) {
  const { profile, isPremium } = useAuth();

  const navigate = (page: Page) => {
    onNavigate(page);
    onClose();
  };

  const navigateStatic = (page: string) => {
    onNavigateStatic?.(page);
    onClose();
  };

  const navItems = [
    { icon: LayoutDashboard, label: 'Dashboard', page: 'dashboard' as Page, badge: 0 },
    { icon: BookOpen, label: 'Subjects', page: 'subject' as Page, badge: 0 },
    { icon: Brain, label: 'MentorX', page: 'mentor' as Page, badge: 0, premium: true, mentorX: true },
    { icon: Search, label: 'Research', page: 'research' as Page, badge: 0 },
    { icon: Users, label: 'Student Hub', page: 'hub' as Page, badge: 0 },
    { icon: MessageCircle, label: 'Study Lounge', page: 'study-lounge' as Page, badge: 0, premium: true },
    { icon: Trophy, label: 'Leaderboard', page: 'leaderboard' as Page, badge: 0 },
    { icon: Bell, label: 'Notifications', page: 'notifications' as Page, badge: unreadNotifications },
  ];

  return (
    <>
      {isOpen && (
        <div
          className="fixed inset-0 bg-slate-950/50 z-[60] lg:hidden backdrop-blur-sm"
          onClick={onClose}
        />
      )}

      <aside
        className={`
          fixed left-0 top-0 w-[17rem] bg-white z-[70]
          transform transition-transform duration-300 ease-out-expo
          flex flex-col
          ${isOpen ? 'translate-x-0' : '-translate-x-full lg:translate-x-0'}
          lg:top-[60px] lg:z-40 lg:shadow-none
        `}
        style={{
          height: '100dvh',
          borderRight: '1px solid rgba(226,232,240,0.7)',
          boxShadow: isOpen ? '4px 0 40px rgba(0,0,0,0.08)' : 'none',
          maxWidth: '100vw',
          overflowX: 'hidden',
          boxSizing: 'border-box',
        }}
      >
        <div className="flex-1 overflow-y-auto overscroll-contain scrollbar-hide">
          <div
            className="p-3.5 flex flex-col min-h-full"
            style={{ paddingBottom: 'calc(env(safe-area-inset-bottom, 0px) + 5rem)' }}
          >
            {profile && (
              <button
                onClick={() => navigate('profile')}
                className="mb-4 p-3 rounded-2xl border transition-all w-full text-left active:scale-[0.98] group"
                style={{ background: 'linear-gradient(135deg, #f0f7ff 0%, #f8fafc 100%)', borderColor: 'rgba(219,234,254,0.8)' }}
              >
                <div className="flex items-center gap-3">
                  <div className="relative flex-shrink-0">
                    {profile.avatar_url ? (
                      <img src={profile.avatar_url} alt={profile.display_name || 'S'} className="w-10 h-10 rounded-full object-cover ring-2 ring-white shadow-sm" />
                    ) : (
                      <div className="w-10 h-10 bg-gradient-to-br from-blue-500 to-blue-700 rounded-full flex items-center justify-center text-white font-black shadow-sm ring-2 ring-white">
                        {profile.display_name?.[0]?.toUpperCase() || 'S'}
                      </div>
                    )}
                    <span className="absolute -bottom-0.5 -right-0.5 w-3 h-3 bg-green-500 rounded-full border-2 border-white" />
                  </div>
                  <div className="flex-1 min-w-0">
                    <p className="font-bold text-slate-800 text-[13px] truncate leading-tight">{profile.display_name || 'Student'}</p>
                    <p className="text-xs text-slate-400 mt-0.5 truncate">{profile.country}</p>
                  </div>
                  <span className="flex-shrink-0 text-[10px] font-black text-blue-600 bg-blue-100 px-2 py-0.5 rounded-full uppercase tracking-wide">Free</span>
                </div>
              </button>
            )}

            <nav className="space-y-0.5 flex-1">
              {navItems.map(({ icon: Icon, label, page, badge, premium: isPrem, mentorX }) => {
                const isActive = currentPage === page ||
                  (page === 'subject' && (currentPage === 'topic' || currentPage === 'quiz' || currentPage === 'exam')) ||
                  (page === 'hub' && currentPage === 'hub-post');

                if (mentorX) {
                  return (
                    <button
                      key={page}
                      onClick={() => navigate(page)}
                      className={`
                        w-full flex items-center gap-3 px-3 py-2.5 rounded-xl text-[13px] font-semibold transition-all duration-150
                        ${isActive
                          ? 'text-white shadow-sm'
                          : 'text-amber-700 hover:text-amber-800 active:scale-[0.98]'
                        }
                      `}
                      style={
                        isActive
                          ? { background: 'linear-gradient(135deg, #f59e0b, #f97316)', boxShadow: '0 2px 12px rgba(245,158,11,0.4)' }
                          : { background: 'linear-gradient(135deg, #fffbeb 0%, #fff7ed 100%)', border: '1px solid rgba(251,191,36,0.35)' }
                      }
                    >
                      <div className={`w-7 h-7 rounded-lg flex items-center justify-center flex-shrink-0 ${isActive ? 'bg-white/20' : 'bg-amber-100'}`}>
                        <Icon size={16} className={isActive ? 'text-white' : 'text-amber-500'} />
                      </div>
                      <span className="flex-1 text-left">{label}</span>
                      {!isActive && (
                        <span className="text-[9px] font-black text-amber-600 bg-amber-200/60 px-1.5 py-0.5 rounded-full uppercase tracking-wide flex-shrink-0">PRO</span>
                      )}
                    </button>
                  );
                }

                return (
                  <button
                    key={page}
                    onClick={() => navigate(page)}
                    className={`
                      w-full flex items-center gap-3 px-3 py-2.5 rounded-xl text-[13px] font-semibold transition-all duration-150
                      ${isActive
                        ? 'bg-blue-600 text-white shadow-sm'
                        : 'text-slate-600 hover:bg-slate-100/80 hover:text-slate-900 active:bg-slate-200'
                      }
                    `}
                    style={isActive ? { boxShadow: '0 2px 8px rgba(37,99,235,0.25)' } : {}}
                  >
                    <div className={`w-7 h-7 rounded-lg flex items-center justify-center flex-shrink-0 transition-all ${
                      isActive ? 'bg-white/20' : 'bg-transparent'
                    }`}>
                      <Icon size={16} className={isActive ? 'text-white' : 'text-slate-400'} />
                    </div>
                    <span className="flex-1 text-left">{label}</span>
                    {isPrem && !isActive && (
                      <span className="text-[9px] font-black text-amber-600 bg-amber-100 px-1.5 py-0.5 rounded-full uppercase tracking-wide flex-shrink-0">PRO</span>
                    )}
                    {badge > 0 ? (
                      <span className={`text-[10px] font-black px-1.5 py-0.5 rounded-full min-w-[18px] text-center leading-tight ${
                        isActive ? 'bg-white text-blue-600' : 'bg-red-500 text-white'
                      }`}>
                        {badge > 99 ? '99+' : badge}
                      </span>
                    ) : (
                      !isActive && !isPrem && <ChevronRight size={12} className="text-slate-300 flex-shrink-0" />
                    )}
                  </button>
                );
              })}
            </nav>

            <div className="mt-4 pt-4 border-t border-slate-100 mb-3">
              <p className="px-3 mb-2 text-[10px] font-bold text-slate-400 uppercase tracking-widest">Study Tools</p>
              <div className="space-y-0.5 mb-4">
                {[
                  { icon: ClipboardList, label: 'Past Questions', page: 'past-questions' as Page },
                  { icon: Lightbulb, label: 'Likely Questions', page: 'likely-questions' as Page },
                  { icon: BookMarked, label: 'Glossary', page: 'glossary' as Page },
                  { icon: HelpCircle, label: 'Exam Tips', page: 'exam-tips' as Page },
                ].map(({ icon: Icon, label, page }) => {
                  const isActive = currentPage === page;
                  return (
                    <button
                      key={page}
                      onClick={() => navigate(page)}
                      className={`
                        w-full flex items-center gap-3 px-3 py-2.5 rounded-xl text-[13px] font-semibold transition-all duration-150
                        ${isActive
                          ? 'bg-blue-600 text-white shadow-sm'
                          : 'text-slate-600 hover:bg-slate-100/80 hover:text-slate-900 active:bg-slate-200'
                        }
                      `}
                      style={isActive ? { boxShadow: '0 2px 8px rgba(37,99,235,0.25)' } : {}}
                    >
                      <div className={`w-7 h-7 rounded-lg flex items-center justify-center flex-shrink-0 ${isActive ? 'bg-white/20' : 'bg-transparent'}`}>
                        <Icon size={16} className={isActive ? 'text-white' : 'text-slate-400'} />
                      </div>
                      <span className="flex-1 text-left">{label}</span>
                      {!isActive && <ChevronRight size={12} className="text-slate-300 flex-shrink-0" />}
                    </button>
                  );
                })}
              </div>
              <p className="px-3 mb-2 text-[10px] font-bold text-slate-400 uppercase tracking-widest">Info & Legal</p>
              <div className="space-y-0.5">
                {[
                  { icon: Info, label: 'About', page: 'about' },
                  { icon: Shield, label: 'Privacy Policy', page: 'privacy' },
                  { icon: FileText, label: 'Terms & Conditions', page: 'terms' },
                  { icon: Mail, label: 'Contact', page: 'contact' },
                ].map(({ icon: Icon, label, page }) => (
                  <button
                    key={page}
                    onClick={() => navigateStatic(page)}
                    className="w-full flex items-center gap-3 px-3 py-2 rounded-xl text-xs font-medium text-slate-500 hover:bg-slate-100/80 hover:text-slate-700 transition-all active:bg-slate-200"
                  >
                    <Icon size={13} className="text-slate-400 flex-shrink-0" />
                    <span className="flex-1 text-left">{label}</span>
                    <ChevronRight size={11} className="text-slate-300" />
                  </button>
                ))}
              </div>
            </div>

            <div className="pt-4 border-t border-slate-100 space-y-2.5">
              <InstallButton variant="sidebar" />
              {!isPremium && (
                <button
                  onClick={() => navigate('premium')}
                  className="w-full flex items-center gap-3 p-3 rounded-xl border transition-all text-left active:scale-[0.98]"
                  style={{ background: 'linear-gradient(135deg, #fffbeb 0%, #fff7ed 100%)', borderColor: 'rgba(251,191,36,0.3)' }}
                >
                  <div className="w-7 h-7 bg-amber-100 rounded-lg flex items-center justify-center flex-shrink-0">
                    <Crown size={13} className="text-amber-600" />
                  </div>
                  <div className="flex-1 min-w-0">
                    <p className="text-xs font-black text-amber-900 leading-tight">Upgrade to Premium</p>
                    <p className="text-[10px] text-amber-600 mt-0.5">75 Leones · 1 year · full access</p>
                  </div>
                  <ChevronRight size={11} className="text-amber-400 flex-shrink-0" />
                </button>
              )}
              {isPremium && (
                <div className="p-3 rounded-xl border" style={{ background: 'linear-gradient(135deg, #fffbeb 0%, #fff7ed 100%)', borderColor: 'rgba(251,191,36,0.3)' }}>
                  <div className="flex items-center gap-2">
                    <Crown size={13} className="text-amber-500 flex-shrink-0" />
                    <p className="text-xs font-black text-amber-800">Premium Active</p>
                  </div>
                </div>
              )}
            </div>
          </div>
        </div>
      </aside>
    </>
  );
});

export default Sidebar;
