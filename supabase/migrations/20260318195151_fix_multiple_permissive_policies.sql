/*
  # Fix multiple permissive policies

  ## Purpose
  Multiple permissive policies for the same role and action cause PostgreSQL to evaluate
  each policy separately and allow access if ANY policy passes. This is inefficient and
  can lead to unintended access. We consolidate these into single policies.

  ## Tables Modified

  ### exam_sessions
  The table had two SELECT policies:
  - "Users can view all exam sessions for leaderboard" (allowed all authenticated users to see all rows)
  - "Users can view own exam sessions" (restricted to own rows)
  
  Since the leaderboard policy already covers own sessions (it's broader), we merge into
  one policy that allows all authenticated users to view exam sessions (needed for leaderboard).

  ### hub_answers
  The table had two UPDATE policies:
  - "Users can update own answers" (own rows only)
  - "Post owners can accept answers on their posts" (post owners can update any answer on their posts)
  
  These are merged into a single policy using OR logic.
*/

-- exam_sessions: merge the two SELECT policies into one
DROP POLICY IF EXISTS "Users can view all exam sessions for leaderboard" ON public.exam_sessions;
DROP POLICY IF EXISTS "Users can view own exam sessions" ON public.exam_sessions;

CREATE POLICY "Authenticated users can view exam sessions"
  ON public.exam_sessions FOR SELECT
  TO authenticated
  USING (true);

-- hub_answers: merge the two UPDATE policies into one
DROP POLICY IF EXISTS "Users can update own answers" ON public.hub_answers;
DROP POLICY IF EXISTS "Post owners can accept answers on their posts" ON public.hub_answers;

CREATE POLICY "Users can update own or accepted answers on own posts"
  ON public.hub_answers FOR UPDATE
  TO authenticated
  USING (
    user_id = (select auth.uid())
    OR EXISTS (
      SELECT 1 FROM public.hub_posts
      WHERE id = hub_answers.post_id AND user_id = (select auth.uid())
    )
  )
  WITH CHECK (
    user_id = (select auth.uid())
    OR EXISTS (
      SELECT 1 FROM public.hub_posts
      WHERE id = hub_answers.post_id AND user_id = (select auth.uid())
    )
  );
