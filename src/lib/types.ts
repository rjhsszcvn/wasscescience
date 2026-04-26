export type UserRole = 'student' | 'teacher';
export type Country = 'Sierra Leone' | 'Nigeria' | 'Ghana' | 'Liberia' | 'Gambia';

export interface UserProfile {
  id: string;
  email: string;
  display_name: string | null;
  avatar_url: string | null;
  role: UserRole;
  country: Country;
  weak_subjects: string[];
  onboarding_complete: boolean;
  last_topic_id: string | null;
  trial_started_at: string | null;
  premium_expires_at: string | null;
  created_at: string;
  updated_at: string;
}

export interface Subject {
  id: string;
  name: string;
  description: string;
  icon: string;
  color: string;
  is_premium: boolean;
  order_index: number;
}

export interface Topic {
  id: string;
  subject_id: string;
  name: string;
  description: string;
  content: string;
  order_index: number;
  duration_minutes: number;
}

export interface QuizQuestion {
  id: string;
  topic_id: string;
  question: string;
  options: string[];
  correct_answer: number;
  explanation: string;
  difficulty: 'easy' | 'medium' | 'hard';
}

export interface UserProgress {
  id: string;
  user_id: string;
  topic_id: string;
  completed: boolean;
  notes_read: boolean;
  last_accessed: string;
}

export interface QuizAttempt {
  id: string;
  user_id: string;
  topic_id: string;
  subject_id: string;
  score: number;
  total_questions: number;
  time_taken: number;
  completed_at: string;
}

export interface ExamSession {
  id: string;
  user_id: string;
  subject_id: string;
  score: number;
  total_questions: number;
  time_taken: number;
  country: string;
  completed_at: string;
}

export interface HubPost {
  id: string;
  user_id: string;
  author_name: string;
  country: string;
  title: string;
  content: string;
  subject_id: string | null;
  tags: string[];
  upvotes: number;
  answer_count: number;
  post_type: 'question' | 'announcement' | 'material';
  is_solved: boolean;
  material_url: string | null;
  material_name: string | null;
  material_type: string | null;
  created_at: string;
  updated_at: string;
}

export interface HubAnswer {
  id: string;
  post_id: string;
  user_id: string;
  author_name: string;
  content: string;
  upvotes: number;
  is_accepted: boolean;
  created_at: string;
}

export interface Notification {
  id: string;
  user_id: string;
  title: string;
  message: string;
  type: 'info' | 'warning' | 'success' | 'error';
  read: boolean;
  created_at: string;
}

export interface LeaderboardEntry {
  user_id: string;
  display_name: string;
  country: string;
  total_score: number;
  exams_taken: number;
  avg_score: number;
}

export interface PremiumCode {
  id: string;
  code: string;
  created_at: string;
  used_at: string | null;
  used_by: string | null;
  used_by_name?: string | null;
  used_by_email?: string | null;
}

export type Page =
  | 'home'
  | 'auth'
  | 'auth-callback'
  | 'onboarding'
  | 'dashboard'
  | 'subject'
  | 'topic'
  | 'quiz'
  | 'exam'
  | 'hub'
  | 'hub-post'
  | 'leaderboard'
  | 'profile'
  | 'notifications'
  | 'research'
  | 'study-lounge'
  | 'about'
  | 'privacy'
  | 'terms'
  | 'contact'
  | 'faq'
  | 'premium'
  | 'admin'
  | 'reset-password'
  | 'past-questions'
  | 'exam-tips'
  | 'glossary'
  | 'likely-questions'
  | 'mentor';

export interface ChatMessage {
  id: string;
  country: string;
  user_id: string;
  display_name: string;
  avatar_url: string | null;
  content: string;
  created_at: string;
}

export interface SavedResearch {
  id: string;
  user_id: string;
  query: string;
  answer_title: string;
  answer_preview: string;
  answer_data: ResearchAnswer;
  created_at: string;
}

export interface ResearchAnswer {
  title: string;
  subject: string;
  directExplanation: string;
  keyPoints: string[];
  breakdown: BreakdownSection[];
  example: string | null;
  summary: string;
  relatedTopics: string[];
  confidence: 'high' | 'medium' | 'partial';
}

export interface BreakdownSection {
  heading: string;
  content: string;
  type: 'concept' | 'process' | 'formula' | 'fact' | 'comparison';
}
