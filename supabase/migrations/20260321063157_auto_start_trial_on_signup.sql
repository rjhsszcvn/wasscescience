/*
  # Auto-Start 7-Day Free Trial

  ## Summary
  Ensures every authenticated user automatically gets a 7-day free trial when their profile is created.

  ## Changes
  1. Ensures `trial_started_at` column exists on `user_profiles` (was already there, idempotent)
  2. Updates the profile creation trigger to set `trial_started_at = now()` immediately on insert
  3. Backfills existing users who have no `trial_started_at` (sets it to their `created_at` so their
     trial is measured from account creation — giving them credit for time already used)
  4. Also creates a DB function `start_trial_if_needed` that can be called from the client if the trigger
     was missed for any reason

  ## Security
  - No new tables, no RLS changes needed
*/

-- Ensure column exists (safe if already present)
DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'user_profiles' AND column_name = 'trial_started_at'
  ) THEN
    ALTER TABLE user_profiles ADD COLUMN trial_started_at timestamptz;
  END IF;
END $$;

-- Backfill: users who signed up before this migration get trial_started_at = created_at
-- so their 7-day trial is counted from when they joined (fair, preserves history)
UPDATE user_profiles
SET trial_started_at = created_at
WHERE trial_started_at IS NULL
  AND premium_expires_at IS NULL;

-- Update existing trigger function to always set trial_started_at on new profile creation
CREATE OR REPLACE FUNCTION handle_new_user_profile()
RETURNS trigger
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
BEGIN
  -- Auto-start the 7-day free trial immediately on profile creation
  IF NEW.trial_started_at IS NULL THEN
    NEW.trial_started_at = now();
  END IF;
  RETURN NEW;
END;
$$;

-- Re-attach trigger if it doesn't exist (idempotent)
DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.triggers
    WHERE trigger_name = 'set_trial_on_profile_create'
      AND event_object_table = 'user_profiles'
  ) THEN
    CREATE TRIGGER set_trial_on_profile_create
      BEFORE INSERT ON user_profiles
      FOR EACH ROW
      EXECUTE FUNCTION handle_new_user_profile();
  END IF;
END $$;

-- Helper RPC: called from client to ensure trial is started for existing users
CREATE OR REPLACE FUNCTION start_trial_if_needed(p_user_id uuid)
RETURNS void
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
BEGIN
  UPDATE user_profiles
  SET trial_started_at = now()
  WHERE id = p_user_id
    AND trial_started_at IS NULL
    AND premium_expires_at IS NULL;
END;
$$;
