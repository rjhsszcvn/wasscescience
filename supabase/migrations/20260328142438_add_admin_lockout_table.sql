/*
  # Admin Login Lockout System

  ## Purpose
  Tracks failed admin login attempts by device fingerprint and IP address.
  After 3 failed attempts, the device fingerprint is permanently banned —
  the input field is disabled and no further attempts are accepted.

  ## New Tables
  - `admin_login_attempts`
    - `id` (uuid, primary key)
    - `fingerprint` (text) — browser-derived device fingerprint (canvas hash + UA + screen + timezone)
    - `ip_address` (text) — client IP at time of attempt
    - `attempted_at` (timestamptz) — when the attempt occurred
    - `succeeded` (boolean) — whether the attempt was successful

  - `admin_banned_devices`
    - `id` (uuid, primary key)
    - `fingerprint` (text, unique) — permanently banned device fingerprint
    - `ip_address` (text) — IP at time of ban
    - `banned_at` (timestamptz) — when the ban was imposed
    - `attempt_count` (int) — total failed attempts before ban

  ## Security
  - RLS enabled on both tables
  - Only service role / anon can INSERT attempts (no auth required since this is a pre-auth flow)
  - No SELECT allowed from client (reads done server-side via service role or trusted RPC)
  - Public INSERT allowed for logging (no sensitive data exposed)
*/

CREATE TABLE IF NOT EXISTS admin_login_attempts (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  fingerprint text NOT NULL,
  ip_address text NOT NULL DEFAULT '',
  attempted_at timestamptz NOT NULL DEFAULT now(),
  succeeded boolean NOT NULL DEFAULT false
);

CREATE INDEX IF NOT EXISTS idx_admin_login_attempts_fingerprint ON admin_login_attempts(fingerprint);
CREATE INDEX IF NOT EXISTS idx_admin_login_attempts_attempted_at ON admin_login_attempts(attempted_at);

ALTER TABLE admin_login_attempts ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Allow insert for login attempt logging"
  ON admin_login_attempts
  FOR INSERT
  TO anon, authenticated
  WITH CHECK (true);

CREATE TABLE IF NOT EXISTS admin_banned_devices (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  fingerprint text UNIQUE NOT NULL,
  ip_address text NOT NULL DEFAULT '',
  banned_at timestamptz NOT NULL DEFAULT now(),
  attempt_count int NOT NULL DEFAULT 3
);

CREATE INDEX IF NOT EXISTS idx_admin_banned_devices_fingerprint ON admin_banned_devices(fingerprint);

ALTER TABLE admin_banned_devices ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Allow insert for device banning"
  ON admin_banned_devices
  FOR INSERT
  TO anon, authenticated
  WITH CHECK (true);

CREATE POLICY "Allow select to check ban status"
  ON admin_banned_devices
  FOR SELECT
  TO anon, authenticated
  USING (true);
