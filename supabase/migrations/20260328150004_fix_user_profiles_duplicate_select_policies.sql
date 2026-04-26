/*
  # Fix Multiple Permissive SELECT Policies on user_profiles

  ## Summary
  The `user_profiles` table had two overlapping SELECT policies for authenticated users:
  1. "Authenticated users can read public profile fields" - allows reading any profile (USING true)
  2. "Users can view own profile" - allows reading only own profile

  Having multiple permissive policies for the same role/action causes security warnings
  and unpredictable behavior. We consolidate into one clear policy that allows
  authenticated users to read any profile (needed for features like leaderboard, hub, etc.)

  ## Changes
  - Drop both conflicting SELECT policies
  - Create one unified SELECT policy: authenticated users can read all profiles
*/

DROP POLICY IF EXISTS "Authenticated users can read public profile fields" ON public.user_profiles;
DROP POLICY IF EXISTS "Users can view own profile" ON public.user_profiles;

CREATE POLICY "Authenticated users can read all profiles"
  ON public.user_profiles
  FOR SELECT
  TO authenticated
  USING (true);
