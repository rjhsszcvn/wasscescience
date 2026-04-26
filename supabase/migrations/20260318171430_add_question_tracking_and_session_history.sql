/*
  # Add Question Tracking and Session History

  ## Overview
  Adds infrastructure for anti-repeat question delivery, session-based question tracking,
  and enriched question metadata for WASSCE exam preparation.

  ## New Tables
  - `user_question_history` - Tracks which questions a user has seen per subject to prevent repetition
  - `quiz_sessions` - Stores individual quiz session metadata with question IDs used

  ## Modified Tables
  - `quiz_questions` - Adds `subject_id` column for direct subject filtering without topic join

  ## Security
  - RLS enabled on all new tables
  - Users can only read/write their own history and sessions

  ## Notes
  - question_history uses a composite unique key (user_id, question_id) so upserts are safe
  - quiz_sessions stores the list of question IDs as JSONB for replay/review
*/

-- Add subject_id directly on quiz_questions for faster lookups
DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'quiz_questions' AND column_name = 'subject_id'
  ) THEN
    ALTER TABLE quiz_questions ADD COLUMN subject_id uuid REFERENCES subjects(id) ON DELETE CASCADE;
  END IF;
END $$;

-- Backfill subject_id from topics table
UPDATE quiz_questions qq
SET subject_id = t.subject_id
FROM topics t
WHERE qq.topic_id = t.id
  AND qq.subject_id IS NULL;

-- Create index for subject-level question fetching
CREATE INDEX IF NOT EXISTS idx_quiz_questions_subject ON quiz_questions(subject_id);

-- Track questions seen by each user to prevent repeats
CREATE TABLE IF NOT EXISTS user_question_history (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id uuid REFERENCES auth.users(id) ON DELETE CASCADE NOT NULL,
  question_id uuid REFERENCES quiz_questions(id) ON DELETE CASCADE NOT NULL,
  subject_id uuid REFERENCES subjects(id) ON DELETE CASCADE NOT NULL,
  seen_at timestamptz DEFAULT now(),
  UNIQUE(user_id, question_id)
);

ALTER TABLE user_question_history ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Users can view own question history"
  ON user_question_history FOR SELECT
  TO authenticated
  USING (auth.uid() = user_id);

CREATE POLICY "Users can insert own question history"
  ON user_question_history FOR INSERT
  TO authenticated
  WITH CHECK (auth.uid() = user_id);

CREATE POLICY "Users can delete own question history"
  ON user_question_history FOR DELETE
  TO authenticated
  USING (auth.uid() = user_id);

CREATE INDEX IF NOT EXISTS idx_user_question_history_user ON user_question_history(user_id, subject_id);

-- Store quiz session details including shuffled option order for result review
CREATE TABLE IF NOT EXISTS quiz_sessions (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id uuid REFERENCES auth.users(id) ON DELETE CASCADE NOT NULL,
  topic_id uuid REFERENCES topics(id) ON DELETE CASCADE,
  subject_id uuid REFERENCES subjects(id) ON DELETE CASCADE NOT NULL,
  session_type text NOT NULL CHECK (session_type IN ('quiz', 'exam')),
  question_ids jsonb NOT NULL DEFAULT '[]',
  user_answers jsonb NOT NULL DEFAULT '[]',
  shuffled_options jsonb NOT NULL DEFAULT '[]',
  correct_answers jsonb NOT NULL DEFAULT '[]',
  score integer NOT NULL DEFAULT 0,
  total_questions integer NOT NULL DEFAULT 0,
  time_taken integer NOT NULL DEFAULT 0,
  completed_at timestamptz DEFAULT now()
);

ALTER TABLE quiz_sessions ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Users can view own quiz sessions"
  ON quiz_sessions FOR SELECT
  TO authenticated
  USING (auth.uid() = user_id);

CREATE POLICY "Users can insert own quiz sessions"
  ON quiz_sessions FOR INSERT
  TO authenticated
  WITH CHECK (auth.uid() = user_id);

CREATE INDEX IF NOT EXISTS idx_quiz_sessions_user ON quiz_sessions(user_id, subject_id);
