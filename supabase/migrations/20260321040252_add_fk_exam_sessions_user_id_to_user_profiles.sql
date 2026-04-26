/*
  # Add foreign key from exam_sessions.user_id to user_profiles.id

  ## Problem
  exam_sessions.user_id had no declared FK to user_profiles.
  Supabase PostgREST requires a FK constraint to resolve embedded
  relationship joins (e.g. .select('user_profiles(display_name)')).
  Without it the join silently returns null, making the leaderboard empty.

  ## Change
  - Add FK constraint: exam_sessions.user_id → user_profiles.id
*/

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.table_constraints
    WHERE constraint_name = 'exam_sessions_user_id_fkey'
      AND table_name = 'exam_sessions'
  ) THEN
    ALTER TABLE exam_sessions
      ADD CONSTRAINT exam_sessions_user_id_fkey
      FOREIGN KEY (user_id) REFERENCES user_profiles(id) ON DELETE CASCADE;
  END IF;
END $$;
