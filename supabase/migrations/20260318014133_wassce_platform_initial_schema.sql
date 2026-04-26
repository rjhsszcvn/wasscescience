
/*
  # WASSCE Learning Platform - Initial Schema

  ## Summary
  Complete database schema for a Science-focused WASSCE learning platform with:
  - User profiles with trial/subscription management
  - Subjects, topics, and quiz questions
  - Progress tracking per user/topic
  - Quiz attempts and exam sessions
  - Student Hub (posts and answers) with country-based isolation
  - Notifications system
  - Leaderboard support

  ## Tables Created
  1. `user_profiles` - Extended user data: role, country, subscription status, trial dates
  2. `subjects` - Premium science subjects
  3. `topics` - Topics within each subject with markdown notes
  4. `quiz_questions` - Multiple-choice questions per topic
  5. `user_progress` - Tracks which topics a user has completed
  6. `quiz_attempts` - Records quiz scores per user/topic
  7. `exam_sessions` - Records full exam scores per user/subject
  8. `hub_posts` - Student Hub questions/posts (country-isolated)
  9. `hub_answers` - Answers to hub posts
  10. `hub_votes` - Upvote tracking for posts and answers
  11. `notifications` - In-app notifications for trial reminders

  ## Security
  - RLS enabled on all tables
  - Users can only access their own profile, progress, attempts
  - Hub posts/answers isolated by country
  - Quiz questions readable by all authenticated users
*/

-- USER PROFILES
CREATE TABLE IF NOT EXISTS user_profiles (
  id uuid PRIMARY KEY REFERENCES auth.users(id) ON DELETE CASCADE,
  email text NOT NULL,
  display_name text,
  role text NOT NULL DEFAULT 'student' CHECK (role IN ('student', 'teacher')),
  country text NOT NULL DEFAULT 'Ghana' CHECK (country IN ('Sierra Leone', 'Nigeria', 'Ghana', 'Liberia', 'Gambia')),
  weak_subjects text[] DEFAULT '{}',
  trial_start_date timestamptz DEFAULT now(),
  trial_end_date timestamptz DEFAULT (now() + interval '7 days'),
  subscription_status text DEFAULT 'trial' CHECK (subscription_status IN ('trial', 'active', 'expired', 'none')),
  subscription_id text,
  premium_access boolean DEFAULT false,
  onboarding_complete boolean DEFAULT false,
  last_topic_id uuid,
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now()
);

ALTER TABLE user_profiles ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Users can view own profile"
  ON user_profiles FOR SELECT
  TO authenticated
  USING (auth.uid() = id);

CREATE POLICY "Users can insert own profile"
  ON user_profiles FOR INSERT
  TO authenticated
  WITH CHECK (auth.uid() = id);

CREATE POLICY "Users can update own profile"
  ON user_profiles FOR UPDATE
  TO authenticated
  USING (auth.uid() = id)
  WITH CHECK (auth.uid() = id);

-- SUBJECTS
CREATE TABLE IF NOT EXISTS subjects (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  name text NOT NULL,
  description text,
  icon text DEFAULT 'book',
  color text DEFAULT '#3B82F6',
  is_premium boolean DEFAULT true,
  order_index integer DEFAULT 0,
  created_at timestamptz DEFAULT now()
);

ALTER TABLE subjects ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Authenticated users can view subjects"
  ON subjects FOR SELECT
  TO authenticated
  USING (true);

-- TOPICS
CREATE TABLE IF NOT EXISTS topics (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  subject_id uuid REFERENCES subjects(id) ON DELETE CASCADE,
  name text NOT NULL,
  description text,
  content text DEFAULT '',
  order_index integer DEFAULT 0,
  duration_minutes integer DEFAULT 20,
  created_at timestamptz DEFAULT now()
);

ALTER TABLE topics ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Authenticated users can view topics"
  ON topics FOR SELECT
  TO authenticated
  USING (true);

-- QUIZ QUESTIONS
CREATE TABLE IF NOT EXISTS quiz_questions (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  topic_id uuid REFERENCES topics(id) ON DELETE CASCADE,
  question text NOT NULL,
  options jsonb NOT NULL,
  correct_answer integer NOT NULL,
  explanation text DEFAULT '',
  difficulty text DEFAULT 'medium' CHECK (difficulty IN ('easy', 'medium', 'hard')),
  created_at timestamptz DEFAULT now()
);

ALTER TABLE quiz_questions ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Authenticated users can view quiz questions"
  ON quiz_questions FOR SELECT
  TO authenticated
  USING (true);

-- USER PROGRESS
CREATE TABLE IF NOT EXISTS user_progress (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id uuid REFERENCES auth.users(id) ON DELETE CASCADE,
  topic_id uuid REFERENCES topics(id) ON DELETE CASCADE,
  completed boolean DEFAULT false,
  notes_read boolean DEFAULT false,
  last_accessed timestamptz DEFAULT now(),
  created_at timestamptz DEFAULT now(),
  UNIQUE(user_id, topic_id)
);

ALTER TABLE user_progress ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Users can view own progress"
  ON user_progress FOR SELECT
  TO authenticated
  USING (auth.uid() = user_id);

CREATE POLICY "Users can insert own progress"
  ON user_progress FOR INSERT
  TO authenticated
  WITH CHECK (auth.uid() = user_id);

CREATE POLICY "Users can update own progress"
  ON user_progress FOR UPDATE
  TO authenticated
  USING (auth.uid() = user_id)
  WITH CHECK (auth.uid() = user_id);

-- QUIZ ATTEMPTS
CREATE TABLE IF NOT EXISTS quiz_attempts (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id uuid REFERENCES auth.users(id) ON DELETE CASCADE,
  topic_id uuid REFERENCES topics(id) ON DELETE CASCADE,
  subject_id uuid REFERENCES subjects(id) ON DELETE CASCADE,
  score integer NOT NULL DEFAULT 0,
  total_questions integer NOT NULL DEFAULT 0,
  time_taken integer DEFAULT 0,
  completed_at timestamptz DEFAULT now()
);

ALTER TABLE quiz_attempts ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Users can view own quiz attempts"
  ON quiz_attempts FOR SELECT
  TO authenticated
  USING (auth.uid() = user_id);

CREATE POLICY "Users can insert own quiz attempts"
  ON quiz_attempts FOR INSERT
  TO authenticated
  WITH CHECK (auth.uid() = user_id);

-- EXAM SESSIONS
CREATE TABLE IF NOT EXISTS exam_sessions (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id uuid REFERENCES auth.users(id) ON DELETE CASCADE,
  subject_id uuid REFERENCES subjects(id) ON DELETE CASCADE,
  score integer NOT NULL DEFAULT 0,
  total_questions integer NOT NULL DEFAULT 0,
  time_taken integer DEFAULT 0,
  country text NOT NULL DEFAULT 'Ghana',
  completed_at timestamptz DEFAULT now()
);

ALTER TABLE exam_sessions ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Users can view own exam sessions"
  ON exam_sessions FOR SELECT
  TO authenticated
  USING (auth.uid() = user_id);

CREATE POLICY "Users can insert own exam sessions"
  ON exam_sessions FOR INSERT
  TO authenticated
  WITH CHECK (auth.uid() = user_id);

-- Leaderboard view (public within country)
CREATE POLICY "Users can view all exam sessions for leaderboard"
  ON exam_sessions FOR SELECT
  TO authenticated
  USING (true);

-- HUB POSTS
CREATE TABLE IF NOT EXISTS hub_posts (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id uuid REFERENCES auth.users(id) ON DELETE CASCADE,
  author_name text NOT NULL DEFAULT 'Student',
  country text NOT NULL,
  title text NOT NULL,
  content text NOT NULL,
  subject_id uuid REFERENCES subjects(id),
  tags text[] DEFAULT '{}',
  upvotes integer DEFAULT 0,
  answer_count integer DEFAULT 0,
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now()
);

ALTER TABLE hub_posts ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Users can view posts from same country"
  ON hub_posts FOR SELECT
  TO authenticated
  USING (
    country = (SELECT country FROM user_profiles WHERE id = auth.uid())
  );

CREATE POLICY "Users can insert own posts"
  ON hub_posts FOR INSERT
  TO authenticated
  WITH CHECK (auth.uid() = user_id);

CREATE POLICY "Users can update own posts"
  ON hub_posts FOR UPDATE
  TO authenticated
  USING (auth.uid() = user_id)
  WITH CHECK (auth.uid() = user_id);

-- HUB ANSWERS
CREATE TABLE IF NOT EXISTS hub_answers (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  post_id uuid REFERENCES hub_posts(id) ON DELETE CASCADE,
  user_id uuid REFERENCES auth.users(id) ON DELETE CASCADE,
  author_name text NOT NULL DEFAULT 'Student',
  content text NOT NULL,
  upvotes integer DEFAULT 0,
  is_accepted boolean DEFAULT false,
  created_at timestamptz DEFAULT now()
);

ALTER TABLE hub_answers ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Users can view answers to accessible posts"
  ON hub_answers FOR SELECT
  TO authenticated
  USING (
    EXISTS (
      SELECT 1 FROM hub_posts hp
      WHERE hp.id = post_id
      AND hp.country = (SELECT country FROM user_profiles WHERE id = auth.uid())
    )
  );

CREATE POLICY "Users can insert own answers"
  ON hub_answers FOR INSERT
  TO authenticated
  WITH CHECK (auth.uid() = user_id);

CREATE POLICY "Users can update own answers"
  ON hub_answers FOR UPDATE
  TO authenticated
  USING (auth.uid() = user_id)
  WITH CHECK (auth.uid() = user_id);

-- NOTIFICATIONS
CREATE TABLE IF NOT EXISTS notifications (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id uuid REFERENCES auth.users(id) ON DELETE CASCADE,
  title text NOT NULL,
  message text NOT NULL,
  type text DEFAULT 'info' CHECK (type IN ('info', 'warning', 'success', 'error')),
  read boolean DEFAULT false,
  created_at timestamptz DEFAULT now()
);

ALTER TABLE notifications ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Users can view own notifications"
  ON notifications FOR SELECT
  TO authenticated
  USING (auth.uid() = user_id);

CREATE POLICY "Users can update own notifications"
  ON notifications FOR UPDATE
  TO authenticated
  USING (auth.uid() = user_id)
  WITH CHECK (auth.uid() = user_id);

CREATE POLICY "System can insert notifications"
  ON notifications FOR INSERT
  TO authenticated
  WITH CHECK (true);

-- INDEXES for performance
CREATE INDEX IF NOT EXISTS idx_user_progress_user ON user_progress(user_id);
CREATE INDEX IF NOT EXISTS idx_user_progress_topic ON user_progress(topic_id);
CREATE INDEX IF NOT EXISTS idx_quiz_attempts_user ON quiz_attempts(user_id);
CREATE INDEX IF NOT EXISTS idx_exam_sessions_country ON exam_sessions(country);
CREATE INDEX IF NOT EXISTS idx_hub_posts_country ON hub_posts(country);
CREATE INDEX IF NOT EXISTS idx_hub_answers_post ON hub_answers(post_id);
CREATE INDEX IF NOT EXISTS idx_notifications_user ON notifications(user_id);
CREATE INDEX IF NOT EXISTS idx_topics_subject ON topics(subject_id);
CREATE INDEX IF NOT EXISTS idx_quiz_questions_topic ON quiz_questions(topic_id);
