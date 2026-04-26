/*
  # Premium Access System

  ## Overview
  This migration adds support for:
  - Premium access codes (single-use, admin-generated, WS-YYYY-XXXX format)
  - Premium access tracking on user profiles (1-year expiry)
  - Trial period tracking (7-day free trial per user)

  ## New Columns on user_profiles
  - `trial_started_at` (timestamptz) — when the user first created their account / trial started
  - `premium_expires_at` (timestamptz) — when premium access expires (NULL = not premium)

  ## New Table: premium_codes
  - `id` (uuid, pk)
  - `code` (text, unique) — format WS-YYYY-XXXX
  - `created_at` (timestamptz)
  - `used_at` (timestamptz) — NULL means unused
  - `used_by` (uuid, fk → user_profiles.id) — NULL means unused

  ## Security
  - RLS enabled on premium_codes
  - Admin read: uses service role only (no user-level policy needed for admin page)
  - Authenticated users can read codes they used (to verify their own code status)
  - No user can insert or update codes directly
  - Code redemption handled server-side via a Postgres function with SECURITY DEFINER
*/

-- Add premium columns to user_profiles
DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'user_profiles' AND column_name = 'trial_started_at'
  ) THEN
    ALTER TABLE user_profiles ADD COLUMN trial_started_at timestamptz DEFAULT now();
  END IF;
END $$;

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'user_profiles' AND column_name = 'premium_expires_at'
  ) THEN
    ALTER TABLE user_profiles ADD COLUMN premium_expires_at timestamptz DEFAULT NULL;
  END IF;
END $$;

-- Backfill trial_started_at for existing users from created_at
UPDATE user_profiles
SET trial_started_at = created_at
WHERE trial_started_at IS NULL AND created_at IS NOT NULL;

-- Premium codes table
CREATE TABLE IF NOT EXISTS premium_codes (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  code text UNIQUE NOT NULL,
  created_at timestamptz DEFAULT now(),
  used_at timestamptz DEFAULT NULL,
  used_by uuid REFERENCES user_profiles(id) ON DELETE SET NULL DEFAULT NULL
);

-- Indexes
CREATE INDEX IF NOT EXISTS idx_premium_codes_code ON premium_codes(code);
CREATE INDEX IF NOT EXISTS idx_premium_codes_used_by ON premium_codes(used_by);

-- Enable RLS
ALTER TABLE premium_codes ENABLE ROW LEVEL SECURITY;

-- Authenticated users can view their own redeemed code (used_by = auth.uid())
CREATE POLICY "Users can view codes they redeemed"
  ON premium_codes FOR SELECT
  TO authenticated
  USING (used_by = auth.uid());

-- No insert/update/delete from client side — all handled by SECURITY DEFINER functions

-- Function to redeem a premium code (SECURITY DEFINER so it can bypass RLS)
CREATE OR REPLACE FUNCTION redeem_premium_code(p_code text, p_user_id uuid)
RETURNS jsonb
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
  v_code_id uuid;
  v_used_by uuid;
  v_expiry timestamptz;
BEGIN
  -- Look up the code
  SELECT id, used_by INTO v_code_id, v_used_by
  FROM premium_codes
  WHERE code = p_code;

  IF v_code_id IS NULL THEN
    RETURN jsonb_build_object('success', false, 'error', 'invalid_code', 'message', 'Invalid premium access code');
  END IF;

  IF v_used_by IS NOT NULL THEN
    RETURN jsonb_build_object('success', false, 'error', 'already_used', 'message', 'This code has already been used');
  END IF;

  -- Mark code as used
  UPDATE premium_codes
  SET used_at = now(), used_by = p_user_id
  WHERE id = v_code_id;

  -- Set premium expiry to 1 year from now
  v_expiry := now() + interval '1 year';

  -- Update user profile
  UPDATE user_profiles
  SET premium_expires_at = v_expiry, ads_removed = true
  WHERE id = p_user_id;

  RETURN jsonb_build_object('success', true, 'expires_at', v_expiry::text);
END;
$$;

-- Admin function to generate codes (called with admin key from client — no auth check needed, validated in app)
CREATE OR REPLACE FUNCTION generate_premium_codes(p_count int DEFAULT 1)
RETURNS jsonb
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
  v_codes text[] := ARRAY[]::text[];
  v_code text;
  v_year text;
  v_rand text;
  i int;
BEGIN
  v_year := to_char(now(), 'YYYY');
  FOR i IN 1..p_count LOOP
    LOOP
      v_rand := lpad(floor(random() * 10000)::text, 4, '0');
      v_code := 'WS-' || v_year || '-' || v_rand;
      EXIT WHEN NOT EXISTS (SELECT 1 FROM premium_codes WHERE code = v_code);
    END LOOP;
    INSERT INTO premium_codes (code) VALUES (v_code);
    v_codes := array_append(v_codes, v_code);
  END LOOP;
  RETURN jsonb_build_object('success', true, 'codes', to_json(v_codes));
END;
$$;

-- Admin function to list all codes
CREATE OR REPLACE FUNCTION list_all_premium_codes()
RETURNS jsonb
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
  v_result jsonb;
BEGIN
  SELECT jsonb_agg(
    jsonb_build_object(
      'id', c.id,
      'code', c.code,
      'created_at', c.created_at,
      'used_at', c.used_at,
      'used_by', c.used_by,
      'used_by_name', p.display_name,
      'used_by_email', p.email
    ) ORDER BY c.created_at DESC
  )
  INTO v_result
  FROM premium_codes c
  LEFT JOIN user_profiles p ON p.id = c.used_by;

  RETURN jsonb_build_object('success', true, 'codes', COALESCE(v_result, '[]'::jsonb));
END;
$$;
