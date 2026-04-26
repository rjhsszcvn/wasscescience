import { Page } from './types';

export interface NavState {
  page: Page;
  data?: Record<string, unknown>;
}

const PAGE_TITLES: Partial<Record<Page, string>> = {
  home: 'WASSCEScience — Free WASSCE Exam Prep 2026 | Notes, Quizzes & Past Questions',
  dashboard: 'Dashboard — WASSCEScience',
  subject: 'WASSCE Subjects 2026 — All Study Notes, Quizzes & Past Questions | WASSCEScience',
  topic: 'Topic — WASSCEScience',
  quiz: 'Quiz — WASSCEScience',
  exam: 'Exam — WASSCEScience',
  hub: 'Student Hub — WASSCEScience',
  'hub-post': 'Student Hub — WASSCEScience',
  leaderboard: 'Leaderboard — WASSCEScience',
  profile: 'Profile — WASSCEScience',
  notifications: 'Notifications — WASSCEScience',
  research: 'Research — WASSCEScience',
  'study-lounge': 'Study Lounge — WASSCEScience',
  about: 'About WASSCEScience — Free WASSCE Exam Prep for West African Students',
  privacy: 'Privacy Policy — WASSCEScience',
  terms: 'Terms & Conditions — WASSCEScience',
  contact: 'Contact WASSCEScience — Get Help with WASSCE Exam Prep',
  faq: 'FAQs — WASSCE Exam Preparation Questions Answered | WASSCEScience',
  premium: 'Premium Access — WASSCEScience',
  'reset-password': 'Reset Password — WASSCEScience',
  'past-questions': 'WASSCE Past Questions 2024–2020 with Answers — Free | WASSCEScience',
  'exam-tips': 'WASSCE Exam Tips & Study Strategies 2026 — How to Pass WAEC | WASSCEScience',
  'glossary': 'WASSCE Science Glossary — Key Terms & Definitions 2026 | WASSCEScience',
  'likely-questions': 'Top Likely WASSCE Questions 2026 — Predicted WAEC Topics | WASSCEScience',
};

export function navStateToPath(state: NavState): string {
  const { page, data } = state;
  switch (page) {
    case 'home':
      return '/';
    case 'dashboard':
      return '/dashboard';
    case 'subject':
      return data?.subjectId ? `/subject/${data.subjectId}` : '/subjects';
    case 'topic':
      return data?.topicId ? `/topic/${data.topicId}` : '/subjects';
    case 'quiz':
      return data?.topicId ? `/quiz/${data.topicId}` : '/subjects';
    case 'exam':
      return data?.subjectId ? `/exam/${data.subjectId}` : '/subjects';
    case 'hub':
      return '/hub';
    case 'hub-post':
      return data?.postId ? `/hub/${data.postId}` : '/hub';
    case 'leaderboard':
      return '/leaderboard';
    case 'profile':
      return '/profile';
    case 'notifications':
      return '/notifications';
    case 'research':
      return '/research';
    case 'study-lounge':
      return '/study-lounge';
    case 'about':
      return '/about';
    case 'privacy':
      return '/privacy';
    case 'terms':
      return '/terms';
    case 'contact':
      return '/contact';
    case 'faq':
      return '/faq';
    case 'premium':
      return '/premium';
    case 'reset-password':
      return '/reset-password';
    case 'past-questions':
      return '/past-questions';
    case 'exam-tips':
      return '/exam-tips';
    case 'glossary':
      return '/glossary';
    case 'likely-questions':
      return '/likely-questions';
    default:
      return '/';
  }
}

export function pathToNavState(pathname: string): NavState | null {
  const parts = pathname.split('/').filter(Boolean);

  if (parts.length === 0) return { page: 'home' };

  const [segment, id] = parts;

  if (segment === 'auth' && id === 'callback') return { page: 'auth-callback' };

  switch (segment) {
    case 'dashboard':
      return { page: 'dashboard' };
    case 'subjects':
      return { page: 'subject' };
    case 'subject':
      return id ? { page: 'subject', data: { subjectId: id } } : { page: 'subject' };
    case 'topic':
      return id ? { page: 'topic', data: { topicId: id } } : null;
    case 'quiz':
      return id ? { page: 'quiz', data: { topicId: id } } : null;
    case 'exam':
      return id ? { page: 'exam', data: { subjectId: id } } : null;
    case 'hub':
      return id ? { page: 'hub-post', data: { postId: id } } : { page: 'hub' };
    case 'leaderboard':
      return { page: 'leaderboard' };
    case 'profile':
      return { page: 'profile' };
    case 'notifications':
      return { page: 'notifications' };
    case 'research':
      return { page: 'research' };
    case 'study-lounge':
      return { page: 'study-lounge' };
    case 'about':
      return { page: 'about' };
    case 'privacy':
      return { page: 'privacy' };
    case 'terms':
      return { page: 'terms' };
    case 'contact':
      return { page: 'contact' };
    case 'faq':
      return { page: 'faq' };
    case 'premium':
      return { page: 'premium' };
    case 'admin':
      return { page: 'admin' };
    case 'reset-password':
      return { page: 'reset-password' };
    case 'past-questions':
      return { page: 'past-questions' };
    case 'exam-tips':
      return { page: 'exam-tips' };
    case 'glossary':
      return { page: 'glossary' };
    case 'likely-questions':
      return { page: 'likely-questions' };
    default:
      return { page: 'home' };
  }
}

export function pushHistory(state: NavState): void {
  const path = navStateToPath(state);
  const title = buildTitle(state);
  window.history.pushState({ navState: state }, title, path);
  document.title = title;
}

export function replaceHistory(state: NavState): void {
  const path = navStateToPath(state);
  const title = buildTitle(state);
  window.history.replaceState({ navState: state }, title, path);
  document.title = title;
}

export function buildTitle(state: NavState): string {
  const base = PAGE_TITLES[state.page] || 'WASSCEScience';
  if (state.page === 'topic' && state.data?.topicName) {
    return `${state.data.topicName} — WASSCEScience`;
  }
  if (state.page === 'quiz' && state.data?.topicName) {
    return `Quiz: ${state.data.topicName} — WASSCEScience`;
  }
  if (state.page === 'exam' && state.data?.subjectName) {
    return `${state.data.subjectName} Exam — WASSCEScience`;
  }
  if (state.page === 'subject' && state.data?.subjectName) {
    return `${state.data.subjectName} — WASSCEScience`;
  }
  return base;
}
