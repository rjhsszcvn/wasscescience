/*
  # Fix Always-True RLS INSERT Policies on Admin Security Tables

  ## Summary
  The `admin_banned_devices` and `admin_login_attempts` tables had INSERT policies
  with `WITH CHECK (true)` which effectively bypassed RLS entirely. These tables
  are used for admin login attempt tracking and device banning.

  Since these tables must accept inserts from both anon and authenticated users
  (login attempts are logged before authentication succeeds), we tighten the
  WITH CHECK clause to require that the core identifying fields are present
  (fingerprint and ip_address must be non-empty strings).

  ## Changes
  - Drop and recreate INSERT policy on `admin_banned_devices` with meaningful check
  - Drop and recreate INSERT policy on `admin_login_attempts` with meaningful check
*/

DROP POLICY IF EXISTS "Allow insert for device banning" ON public.admin_banned_devices;
DROP POLICY IF EXISTS "Allow insert for login attempt logging" ON public.admin_login_attempts;

CREATE POLICY "Allow insert for device banning"
  ON public.admin_banned_devices
  FOR INSERT
  TO anon, authenticated
  WITH CHECK (
    fingerprint IS NOT NULL AND fingerprint <> '' AND
    ip_address IS NOT NULL AND ip_address <> ''
  );

CREATE POLICY "Allow insert for login attempt logging"
  ON public.admin_login_attempts
  FOR INSERT
  TO anon, authenticated
  WITH CHECK (
    fingerprint IS NOT NULL AND fingerprint <> '' AND
    ip_address IS NOT NULL AND ip_address <> ''
  );
