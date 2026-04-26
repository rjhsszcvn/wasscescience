/*
  # Restore user_profiles public read policy

  The "Authenticated users can read public profile fields" policy was removed
  during a security cleanup, but it is required so that authenticated users can
  see other users' display names, avatars, and countries in the Hub, Leaderboard,
  Study Lounge, and similar features.

  This restores the policy using the optimised (select auth.uid()) pattern to
  avoid the RLS initialisation-plan warning.
*/

CREATE POLICY "Authenticated users can read public profile fields"
  ON public.user_profiles FOR SELECT
  TO authenticated
  USING (true);
