import { useState, useEffect, useCallback, lazy, Suspense } from 'react';
import { AuthProvider, useAuth } from './contexts/AuthContext';
import { Page } from './lib/types';
import { NavState, pathToNavState, pushHistory, replaceHistory, buildTitle } from './lib/router';
import { ToastProvider } from './components/ui/Toast';
import ErrorBoundary from './components/ui/ErrorBoundary';
import OfflineIndicator from './components/ui/OfflineIndicator';
import { supabase } from './lib/supabase';
import Header from './components/layout/Header';
import BottomNav from './components/layout/BottomNav';
import { AdStrip, AdBanner } from './components/ui/AdBanner';

const LandingPage = lazy(() => import('./components/landing/LandingPage'));
const AuthForm = lazy(() => import('./components/auth/AuthForm'));
const AuthCallbackPage = lazy(() => import('./components/auth/AuthCallbackPage'));
const AuthPromptModal = lazy(() => import('./components/auth/AuthPromptModal'));
const OnboardingFlow = lazy(() => import('./components/auth/OnboardingFlow'));
const ResetPasswordPage = lazy(() => import('./components/auth/ResetPasswordPage'));
const Sidebar = lazy(() => import('./components/layout/Sidebar'));
const Footer = lazy(() => import('./components/layout/Footer'));
const SubjectPage = lazy(() => import('./components/subjects/SubjectPage'));
const TopicPage = lazy(() => import('./components/subjects/TopicPage'));
const StickyInstallBannerLazy = lazy(() =>
  import('./components/pwa/InstallButton').then(m => ({ default: m.StickyInstallBanner }))
);
const CookieConsent = lazy(() => import('./components/ui/CookieConsent'));

const Dashboard = lazy(() => import('./components/dashboard/Dashboard'));
const AdminPage = lazy(() => import('./components/admin/AdminPage'));
const QuizEngine = lazy(() => import('./components/quiz/QuizEngine'));

const ExamEngine = lazy(() => import('./components/exam/ExamEngine'));
const StudentHub = lazy(() => import('./components/hub/StudentHub'));
const Leaderboard = lazy(() => import('./components/leaderboard/Leaderboard'));
const NotificationsPage = lazy(() => import('./components/notifications/NotificationsPage'));
const ProfilePage = lazy(() => import('./components/profile/ProfilePage'));
const ResearchEngine = lazy(() => import('./components/research/ResearchEngine'));
const StudyLounge = lazy(() => import('./components/chat/StudyLounge'));
const MentorX = lazy(() => import('./components/mentor/MentorX'));
const AboutPage = lazy(() => import('./components/pages/AboutPage'));
const PrivacyPage = lazy(() => import('./components/pages/PrivacyPage'));
const TermsPage = lazy(() => import('./components/pages/TermsPage'));
const ContactPage = lazy(() => import('./components/pages/ContactPage'));
const FAQPage = lazy(() => import('./components/pages/FAQPage'));
const PastQuestionsPage = lazy(() => import('./components/pages/PastQuestionsPage'));
const ExamTipsPage = lazy(() => import('./components/pages/ExamTipsPage'));
const GlossaryPage = lazy(() => import('./components/pages/GlossaryPage'));
const LikelyQuestionsPage = lazy(() => import('./components/pages/LikelyQuestionsPage'));

const STATIC_PAGES: Page[] = ['about', 'privacy', 'terms', 'contact', 'faq', 'past-questions', 'exam-tips', 'glossary', 'likely-questions'];
const AUTH_REQUIRED_PAGES: Page[] = ['hub', 'hub-post', 'leaderboard', 'notifications', 'profile', 'dashboard', 'premium', 'research', 'study-lounge', 'mentor'];

type AuthPromptReason = 'progress' | 'quiz' | 'hub' | 'leaderboard' | 'notifications' | 'dashboard' | 'general';

function getInitialNavState(): NavState {
  const parsed = pathToNavState(window.location.pathname);
  return parsed || { page: 'home' };
}

function prefetchCriticalChunks() {
  const schedule = (window as Window & { requestIdleCallback?: (cb: () => void) => void }).requestIdleCallback
    || ((cb: () => void) => setTimeout(cb, 200));
  schedule(() => {
    import('./components/dashboard/Dashboard');
    import('./components/subjects/SubjectPage');
    import('./components/layout/Sidebar');
    import('./components/landing/LandingPage');
  });
  schedule(() => {
    import('./components/quiz/QuizEngine');
    import('./components/subjects/TopicPage');
  });
}

function PageLoader() {
  return (
    <div className="flex items-center justify-center min-h-[200px]">
      <div className="w-7 h-7 border-2 border-blue-600 border-t-transparent rounded-full animate-spin" />
    </div>
  );
}

function AppContent() {
  const { user, profile, loading, isGuest, isPasswordRecovery, clearPasswordRecovery } = useAuth();
  const [navState, setNavState] = useState<NavState>(getInitialNavState);

  const [sidebarOpen, setSidebarOpen] = useState(false);
  const [unreadNotifications, setUnreadNotifications] = useState(0);
  const [authMode, setAuthMode] = useState<'signup' | 'login'>('signup');
  const [showAuth, setShowAuth] = useState(false);
  const [authPrompt, setAuthPrompt] = useState<{ open: boolean; reason: AuthPromptReason }>({ open: false, reason: 'general' });
  const [dashboardKey, setDashboardKey] = useState(0);

  useEffect(() => {
    prefetchCriticalChunks();
  }, []);

  useEffect(() => {
    if (!profile?.id) return;
    loadUnread();

    const channel = supabase
      .channel(`notifications:${profile.id}`)
      .on(
        'postgres_changes',
        {
          event: '*',
          schema: 'public',
          table: 'notifications',
          filter: `user_id=eq.${profile.id}`,
        },
        () => {
          loadUnread();
        }
      )
      .subscribe();

    return () => {
      supabase.removeChannel(channel);
    };
  }, [profile?.id]);

  useEffect(() => {
    if (user && !isPasswordRecovery) {
      setShowAuth(false);
      if (!window.opener) {
        const currentPage = navState.page;
        const isOnPublicOrAuthPage = ['home', 'auth', 'auth-callback', 'about', 'privacy', 'terms', 'contact'].includes(currentPage);
        if (isOnPublicOrAuthPage) {
          const newState: NavState = { page: 'dashboard' };
          setNavState(newState);
          replaceHistory(newState);
        }
      }
    } else if (!loading) {
      const currentPage = navState.page;
      if (currentPage === 'auth-callback') {
        const newState: NavState = { page: 'home' };
        setNavState(newState);
        replaceHistory(newState);
        return;
      }
      const isProtected = AUTH_REQUIRED_PAGES.includes(currentPage);
      if (isProtected) {
        const newState: NavState = { page: 'home' };
        setNavState(newState);
        replaceHistory(newState);
      }
    }
  }, [user, loading, isPasswordRecovery]);

  useEffect(() => {
    const initialState = getInitialNavState();
    const hasAuthHash = window.location.hash.includes('access_token') || window.location.hash.includes('type=recovery');
    if (!hasAuthHash) {
      replaceHistory(initialState);
    }
    document.title = buildTitle(initialState);
  }, []);

  useEffect(() => {
    function handlePopState(event: PopStateEvent) {
      if (event.state?.navState) {
        const restoredState: NavState = event.state.navState;
        setNavState(restoredState);
        document.title = buildTitle(restoredState);
        window.scrollTo({ top: 0, behavior: 'smooth' });
        setSidebarOpen(false);
      } else {
        const parsed = pathToNavState(window.location.pathname);
        if (parsed) {
          setNavState(parsed);
          document.title = buildTitle(parsed);
          window.scrollTo({ top: 0, behavior: 'smooth' });
        }
      }
    }

    window.addEventListener('popstate', handlePopState);
    return () => window.removeEventListener('popstate', handlePopState);
  }, []);

  async function loadUnread() {
    const { count } = await supabase
      .from('notifications')
      .select('*', { count: 'exact', head: true })
      .eq('user_id', profile!.id)
      .eq('read', false);
    setUnreadNotifications(count || 0);
  }

  function showAuthPrompt(reason: AuthPromptReason = 'general') {
    setAuthPrompt({ open: true, reason });
  }

  const navigate = useCallback((page: Page, data?: Record<string, unknown>) => {
    if (isGuest && AUTH_REQUIRED_PAGES.includes(page)) {
      const reasonMap: Partial<Record<Page, AuthPromptReason>> = {
        hub: 'hub',
        'hub-post': 'hub',
        leaderboard: 'leaderboard',
        notifications: 'notifications',
        dashboard: 'dashboard',
        profile: 'general',
        premium: 'general',
        research: 'general',
        'study-lounge': 'general',
        mentor: 'general',
      };
      showAuthPrompt(reasonMap[page] || 'general');
      return;
    }

    const newState: NavState = { page, data };
    setNavState(newState);
    pushHistory(newState);
    setSidebarOpen(false);
    window.scrollTo({ top: 0, behavior: 'smooth' });
    if (page === 'dashboard') setDashboardKey(k => k + 1);
  }, [isGuest]);

  const handleFooterNav = useCallback((page: string) => {
    if (page === 'back') {
      window.history.back();
      return;
    }
    if (STATIC_PAGES.includes(page as Page)) {
      navigate(page as Page);
    }
  }, [navigate]);

  useEffect(() => {
    if (!loading) {
      const hide = (window as Window & { __hideSplash?: () => void }).__hideSplash;
      if (hide) hide();
    }
  }, [loading]);

  const isResetPasswordRoute = navState.page === 'reset-password' ||
    (typeof window !== 'undefined' && window.location.pathname === '/reset-password');

  if (isPasswordRecovery || isResetPasswordRoute) {
    return (
      <Suspense fallback={<PageLoader />}>
        <ResetPasswordPage
          onDone={async () => {
            await supabase.auth.signOut();
            clearPasswordRecovery();
            const newState: NavState = { page: 'home' };
            setNavState(newState);
            replaceHistory(newState);
            setAuthMode('login');
            setShowAuth(true);
          }}
        />
      </Suspense>
    );
  }

  if (navState.page === 'auth-callback') {
    return (
      <Suspense fallback={<PageLoader />}>
        <AuthCallbackPage />
      </Suspense>
    );
  }

  if (loading && !isPasswordRecovery) {
    return (
      <div className="flex items-center justify-center min-h-screen bg-white">
        <div className="flex flex-col items-center gap-3">
          <div className="w-10 h-10 border-3 border-blue-600 border-t-transparent rounded-full animate-spin" style={{ borderWidth: '3px' }} />
          <p className="text-sm text-gray-500">Signing you in...</p>
        </div>
      </div>
    );
  }

  if (showAuth) {
    return (
      <Suspense fallback={<PageLoader />}>
        <AuthForm
          initialMode={authMode}
          onBackToLanding={() => setShowAuth(false)}
        />
      </Suspense>
    );
  }

  if (profile && !profile.onboarding_complete) {
    return (
      <Suspense fallback={<PageLoader />}>
        <OnboardingFlow onComplete={() => navigate('dashboard')} />
      </Suspense>
    );
  }

  const { page, data } = navState;
  const isStaticPage = STATIC_PAGES.includes(page);

  if (page === 'admin') {
    return (
      <Suspense fallback={<PageLoader />}>
        <AdminPage onBack={() => navigate('home')} />
      </Suspense>
    );
  }

  if (isGuest && page === 'home' && !isStaticPage) {
    return (
      <div className="flex flex-col min-h-screen">
        <OfflineIndicator />
        <Suspense fallback={null}>
          <LandingPage
            onGetStarted={() => { setAuthMode('signup'); setShowAuth(true); }}
            onSignIn={() => { setAuthMode('login'); setShowAuth(true); }}
            onBrowseSubjects={() => navigate('subject')}
            onAdmin={() => navigate('admin')}
            onNavigate={handleFooterNav}
          />
        </Suspense>
        <Suspense fallback={null}>
          <Footer onNavigate={handleFooterNav} />
          <StickyInstallBannerLazy />
          <CookieConsent onNavigate={handleFooterNav} />
        </Suspense>
      </div>
    );
  }

  if (isStaticPage && isGuest) {
    return (
      <div className="flex flex-col min-h-screen">
        <div className="flex-1">
          <Suspense fallback={<PageLoader />}>
            {page === 'about' && <AboutPage onNavigate={handleFooterNav} />}
            {page === 'privacy' && <PrivacyPage onNavigate={handleFooterNav} />}
            {page === 'terms' && <TermsPage onNavigate={handleFooterNav} />}
            {page === 'contact' && <ContactPage onNavigate={handleFooterNav} />}
            {page === 'faq' && <FAQPage onNavigate={handleFooterNav} />}
            {page === 'past-questions' && <PastQuestionsPage onNavigate={navigate} />}
            {page === 'exam-tips' && <ExamTipsPage onNavigate={navigate} />}
            {page === 'glossary' && <GlossaryPage onNavigate={navigate} />}
            {page === 'likely-questions' && <LikelyQuestionsPage onNavigate={navigate} />}
          </Suspense>
        </div>
        <Suspense fallback={null}>
          <Footer onNavigate={handleFooterNav} />
          <CookieConsent onNavigate={handleFooterNav} />
        </Suspense>
      </div>
    );
  }

  const isPublicPage = ['subject', 'topic', 'quiz', 'exam', 'home'].includes(page);
  const showAppChrome = !isGuest || isPublicPage;

  return (
    <div className={`flex flex-col bg-slate-50 ${page === 'study-lounge' || page === 'mentor' ? 'h-[100dvh] overflow-hidden' : 'min-h-screen'}`}>
      <OfflineIndicator />
      <Header
        currentPage={page}
        onNavigate={navigate}
        unreadNotifications={unreadNotifications}
        onToggleSidebar={() => setSidebarOpen(!sidebarOpen)}
        sidebarOpen={sidebarOpen}
        isGuest={isGuest}
        onSignIn={() => { setAuthMode('login'); setShowAuth(true); }}
        onSignUp={() => { setAuthMode('signup'); setShowAuth(true); }}
      />

      {!isGuest && (
        <Suspense fallback={null}>
          <Sidebar
            currentPage={page}
            onNavigate={navigate}
            onNavigateStatic={handleFooterNav}
            isOpen={sidebarOpen}
            onClose={() => setSidebarOpen(false)}
            unreadNotifications={unreadNotifications}
          />
        </Suspense>
      )}

      {isGuest && sidebarOpen && (
        <div
          className="fixed inset-0 bg-black/30 z-30 lg:hidden"
          onClick={() => setSidebarOpen(false)}
        />
      )}

      <main className={`${!isGuest ? 'lg:ml-[17rem]' : ''} pt-14 sm:pt-16 pb-[calc(3.75rem+env(safe-area-inset-bottom,0px))] lg:pb-0 flex-1 ${page === 'study-lounge' || page === 'mentor' ? 'flex flex-col overflow-hidden' : ''}`}>
        {isStaticPage && !isGuest && (
          <Suspense fallback={<PageLoader />}>
            <div>
              {page === 'about' && <AboutPage onNavigate={handleFooterNav} />}
              {page === 'privacy' && <PrivacyPage onNavigate={handleFooterNav} />}
              {page === 'terms' && <TermsPage onNavigate={handleFooterNav} />}
              {page === 'contact' && <ContactPage onNavigate={handleFooterNav} />}
              {page === 'faq' && <FAQPage onNavigate={handleFooterNav} />}
              {page === 'past-questions' && <PastQuestionsPage onNavigate={navigate} />}
              {page === 'exam-tips' && <ExamTipsPage onNavigate={navigate} />}
              {page === 'glossary' && <GlossaryPage onNavigate={navigate} />}
              {page === 'likely-questions' && <LikelyQuestionsPage onNavigate={navigate} />}
            </div>
          </Suspense>
        )}
        <div className={`${page === 'study-lounge' || page === 'mentor' ? 'w-full flex-1 flex flex-col overflow-hidden h-full px-3 sm:px-4 lg:px-6 py-0' : 'max-w-4xl mx-auto px-3 xs:px-4 sm:px-5 lg:px-6 py-4 sm:py-6'} ${isStaticPage && !isGuest ? 'hidden' : ''}`}>
          {!isGuest && page !== 'premium' && page !== 'study-lounge' && page !== 'mentor' && (
            <AdStrip onNavigate={navigate} />
          )}
          <Suspense fallback={<PageLoader />}>
            {page === 'dashboard' && !isGuest && (
              <Dashboard key={dashboardKey} onNavigate={navigate} />
            )}
            {page === 'subject' && (
              <SubjectPage
                subjectId={data?.subjectId as string | undefined}
                onNavigate={navigate}
                onAuthPrompt={showAuthPrompt}
              />
            )}
            {page === 'topic' && typeof data?.topicId === 'string' && (
              <TopicPage
                topicId={data.topicId}
                subjectId={data.subjectId as string}
                subjectName={data.subjectName as string | undefined}
                onNavigate={navigate}
                onAuthPrompt={showAuthPrompt}
              />
            )}
            {page === 'quiz' && typeof data?.topicId === 'string' && (
              <QuizEngine
                topicId={data.topicId}
                subjectId={data.subjectId as string}
                topicName={data.topicName as string | undefined}
                onNavigate={navigate}
                onAuthPrompt={showAuthPrompt}
              />
            )}
            {page === 'exam' && typeof data?.subjectId === 'string' && (
              <ExamEngine
                subjectId={data.subjectId}
                subjectName={data.subjectName as string | undefined}
                onNavigate={navigate}
              />
            )}
            {page === 'hub' && !isGuest && (
              <StudentHub onNavigate={navigate} />
            )}
            {page === 'hub-post' && !isGuest && (
              <StudentHub postId={data?.postId as string | undefined} onNavigate={navigate} />
            )}
            {page === 'leaderboard' && !isGuest && (
              <Leaderboard onNavigate={navigate} />
            )}
            {page === 'notifications' && !isGuest && (
              <NotificationsPage
                onNavigate={navigate}
                onUnreadChange={setUnreadNotifications}
              />
            )}
            {page === 'profile' && !isGuest && (
              <ProfilePage onNavigate={navigate} />
            )}
            {page === 'research' && !isGuest && (
              <ResearchEngine onNavigate={navigate} />
            )}
            {page === 'study-lounge' && !isGuest && (
              <StudyLounge onNavigate={navigate} />
            )}
            {page === 'mentor' && !isGuest && (
              <MentorX onNavigate={navigate} />
            )}
          </Suspense>
        </div>
      </main>

      {!isGuest && page !== 'premium' && page !== 'study-lounge' && page !== 'mentor' && (
        <AdBanner onNavigate={navigate} variant="sticky-bottom" />
      )}

      <BottomNav
        currentPage={page}
        onNavigate={navigate}
        unreadNotifications={unreadNotifications}
        isGuest={isGuest}
        onAuthPrompt={showAuthPrompt}
      />

      <Suspense fallback={null}>
        <AuthPromptModal
          isOpen={authPrompt.open}
          reason={authPrompt.reason}
          onClose={() => setAuthPrompt({ open: false, reason: 'general' })}
          onSignUp={() => { setAuthPrompt({ open: false, reason: 'general' }); setAuthMode('signup'); setShowAuth(true); }}
          onSignIn={() => { setAuthPrompt({ open: false, reason: 'general' }); setAuthMode('login'); setShowAuth(true); }}
        />
      </Suspense>

      {showAppChrome && (
        <Suspense fallback={null}>
          <CookieConsent onNavigate={handleFooterNav} />
        </Suspense>
      )}
    </div>
  );
}

export default function App() {
  return (
    <ErrorBoundary>
      <AuthProvider>
        <ToastProvider>
          <AppContent />
        </ToastProvider>
      </AuthProvider>
    </ErrorBoundary>
  );
}
