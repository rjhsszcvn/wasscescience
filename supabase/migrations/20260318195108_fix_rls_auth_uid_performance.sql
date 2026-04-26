/*
  # Fix RLS policies to use (select auth.uid()) for better performance

  ## Purpose
  Replace direct auth.uid() calls with (select auth.uid()) in all RLS policies.
  This ensures the auth function is evaluated once per query rather than once per row,
  significantly improving query performance at scale.

  ## Tables Modified
  - user_profiles: Users can view/insert/update own profile
  - user_progress: Users can view/insert/update own progress
  - quiz_attempts: Users can view/insert own quiz attempts
  - exam_sessions: Users can view/insert own exam sessions
  - user_question_history: Users can view/insert/delete own question history
  - hub_posts: Users can view/insert/update posts
  - hub_answers: Users can view/insert/update/accept answers
  - notifications: Users can view/update own notifications
  - mastery_attempts: Users can read/insert own mastery attempts
  - quiz_sessions: Users can view/insert own quiz sessions
*/

-- user_profiles policies
DROP POLICY IF EXISTS "Users can view own profile" ON public.user_profiles;
DROP POLICY IF EXISTS "Users can insert own profile" ON public.user_profiles;
DROP POLICY IF EXISTS "Users can update own profile" ON public.user_profiles;

CREATE POLICY "Users can view own profile"
  ON public.user_profiles FOR SELECT
  TO authenticated
  USING (id = (select auth.uid()));

CREATE POLICY "Users can insert own profile"
  ON public.user_profiles FOR INSERT
  TO authenticated
  WITH CHECK (id = (select auth.uid()));

CREATE POLICY "Users can update own profile"
  ON public.user_profiles FOR UPDATE
  TO authenticated
  USING (id = (select auth.uid()))
  WITH CHECK (id = (select auth.uid()));

-- user_progress policies
DROP POLICY IF EXISTS "Users can view own progress" ON public.user_progress;
DROP POLICY IF EXISTS "Users can insert own progress" ON public.user_progress;
DROP POLICY IF EXISTS "Users can update own progress" ON public.user_progress;

CREATE POLICY "Users can view own progress"
  ON public.user_progress FOR SELECT
  TO authenticated
  USING (user_id = (select auth.uid()));

CREATE POLICY "Users can insert own progress"
  ON public.user_progress FOR INSERT
  TO authenticated
  WITH CHECK (user_id = (select auth.uid()));

CREATE POLICY "Users can update own progress"
  ON public.user_progress FOR UPDATE
  TO authenticated
  USING (user_id = (select auth.uid()))
  WITH CHECK (user_id = (select auth.uid()));

-- quiz_attempts policies
DROP POLICY IF EXISTS "Users can view own quiz attempts" ON public.quiz_attempts;
DROP POLICY IF EXISTS "Users can insert own quiz attempts" ON public.quiz_attempts;

CREATE POLICY "Users can view own quiz attempts"
  ON public.quiz_attempts FOR SELECT
  TO authenticated
  USING (user_id = (select auth.uid()));

CREATE POLICY "Users can insert own quiz attempts"
  ON public.quiz_attempts FOR INSERT
  TO authenticated
  WITH CHECK (user_id = (select auth.uid()));

-- exam_sessions policies
DROP POLICY IF EXISTS "Users can view own exam sessions" ON public.exam_sessions;
DROP POLICY IF EXISTS "Users can insert own exam sessions" ON public.exam_sessions;

CREATE POLICY "Users can view own exam sessions"
  ON public.exam_sessions FOR SELECT
  TO authenticated
  USING (user_id = (select auth.uid()));

CREATE POLICY "Users can insert own exam sessions"
  ON public.exam_sessions FOR INSERT
  TO authenticated
  WITH CHECK (user_id = (select auth.uid()));

-- user_question_history policies
DROP POLICY IF EXISTS "Users can view own question history" ON public.user_question_history;
DROP POLICY IF EXISTS "Users can insert own question history" ON public.user_question_history;
DROP POLICY IF EXISTS "Users can delete own question history" ON public.user_question_history;

CREATE POLICY "Users can view own question history"
  ON public.user_question_history FOR SELECT
  TO authenticated
  USING (user_id = (select auth.uid()));

CREATE POLICY "Users can insert own question history"
  ON public.user_question_history FOR INSERT
  TO authenticated
  WITH CHECK (user_id = (select auth.uid()));

CREATE POLICY "Users can delete own question history"
  ON public.user_question_history FOR DELETE
  TO authenticated
  USING (user_id = (select auth.uid()));

-- hub_posts policies
DROP POLICY IF EXISTS "Users can view posts from same country" ON public.hub_posts;
DROP POLICY IF EXISTS "Users can insert own posts" ON public.hub_posts;
DROP POLICY IF EXISTS "Users can update own posts" ON public.hub_posts;

CREATE POLICY "Users can view posts from same country"
  ON public.hub_posts FOR SELECT
  TO authenticated
  USING (
    country = (
      SELECT country FROM public.user_profiles
      WHERE id = (select auth.uid())
    )
  );

CREATE POLICY "Users can insert own posts"
  ON public.hub_posts FOR INSERT
  TO authenticated
  WITH CHECK (user_id = (select auth.uid()));

CREATE POLICY "Users can update own posts"
  ON public.hub_posts FOR UPDATE
  TO authenticated
  USING (user_id = (select auth.uid()))
  WITH CHECK (user_id = (select auth.uid()));

-- hub_answers policies
DROP POLICY IF EXISTS "Users can view answers to accessible posts" ON public.hub_answers;
DROP POLICY IF EXISTS "Users can insert own answers" ON public.hub_answers;
DROP POLICY IF EXISTS "Users can update own answers" ON public.hub_answers;
DROP POLICY IF EXISTS "Post owners can accept answers on their posts" ON public.hub_answers;

CREATE POLICY "Users can view answers to accessible posts"
  ON public.hub_answers FOR SELECT
  TO authenticated
  USING (
    EXISTS (
      SELECT 1 FROM public.hub_posts hp
      JOIN public.user_profiles up ON up.id = (select auth.uid())
      WHERE hp.id = hub_answers.post_id AND hp.country = up.country
    )
  );

CREATE POLICY "Users can insert own answers"
  ON public.hub_answers FOR INSERT
  TO authenticated
  WITH CHECK (user_id = (select auth.uid()));

CREATE POLICY "Users can update own answers"
  ON public.hub_answers FOR UPDATE
  TO authenticated
  USING (user_id = (select auth.uid()))
  WITH CHECK (user_id = (select auth.uid()));

CREATE POLICY "Post owners can accept answers on their posts"
  ON public.hub_answers FOR UPDATE
  TO authenticated
  USING (
    EXISTS (
      SELECT 1 FROM public.hub_posts
      WHERE id = hub_answers.post_id AND user_id = (select auth.uid())
    )
  )
  WITH CHECK (
    EXISTS (
      SELECT 1 FROM public.hub_posts
      WHERE id = hub_answers.post_id AND user_id = (select auth.uid())
    )
  );

-- notifications policies
DROP POLICY IF EXISTS "Users can view own notifications" ON public.notifications;
DROP POLICY IF EXISTS "Users can update own notifications" ON public.notifications;

CREATE POLICY "Users can view own notifications"
  ON public.notifications FOR SELECT
  TO authenticated
  USING (user_id = (select auth.uid()));

CREATE POLICY "Users can update own notifications"
  ON public.notifications FOR UPDATE
  TO authenticated
  USING (user_id = (select auth.uid()))
  WITH CHECK (user_id = (select auth.uid()));

-- mastery_attempts policies
DROP POLICY IF EXISTS "Users can read own mastery attempts" ON public.mastery_attempts;
DROP POLICY IF EXISTS "Users can insert own mastery attempts" ON public.mastery_attempts;

CREATE POLICY "Users can read own mastery attempts"
  ON public.mastery_attempts FOR SELECT
  TO authenticated
  USING (user_id = (select auth.uid()));

CREATE POLICY "Users can insert own mastery attempts"
  ON public.mastery_attempts FOR INSERT
  TO authenticated
  WITH CHECK (user_id = (select auth.uid()));

-- quiz_sessions policies
DROP POLICY IF EXISTS "Users can view own quiz sessions" ON public.quiz_sessions;
DROP POLICY IF EXISTS "Users can insert own quiz sessions" ON public.quiz_sessions;

CREATE POLICY "Users can view own quiz sessions"
  ON public.quiz_sessions FOR SELECT
  TO authenticated
  USING (user_id = (select auth.uid()));

CREATE POLICY "Users can insert own quiz sessions"
  ON public.quiz_sessions FOR INSERT
  TO authenticated
  WITH CHECK (user_id = (select auth.uid()));
