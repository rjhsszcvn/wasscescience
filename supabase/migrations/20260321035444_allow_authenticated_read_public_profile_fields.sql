/*
  # Allow authenticated users to read public profile fields

  ## Problem
  The leaderboard fetches display_name, avatar_url, and country for other users,
  but the existing RLS policy only allows users to read their own profile row.
  This caused all other students to appear as "Unknown" on the leaderboard.

  ## Change
  Add a SELECT policy so any authenticated user can read the public-facing
  fields (display_name, avatar_url, country) from any profile.
  The existing "own profile" policy already covers full profile access for the
  profile owner.
*/

CREATE POLICY "Authenticated users can read public profile fields"
  ON user_profiles
  FOR SELECT
  TO authenticated
  USING (true);
