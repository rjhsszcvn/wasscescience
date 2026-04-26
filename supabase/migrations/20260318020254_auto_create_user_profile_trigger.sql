
/*
  # Auto-create user profile on signup via trigger

  ## Summary
  Creates a PostgreSQL trigger that automatically inserts a default user_profile
  row whenever a new user registers via Supabase Auth. This ensures profiles
  are created reliably server-side regardless of client-side auth state or
  email confirmation status.

  ## Changes
  - Adds `handle_new_user()` function that fires on INSERT to auth.users
  - Creates trigger `on_auth_user_created` to call that function
  - Uses SECURITY DEFINER so it runs with elevated privileges

  ## Important
  This replaces the need for the client to manually insert the profile after signup.
  The client-side profile insert is now a fallback only.
*/

CREATE OR REPLACE FUNCTION public.handle_new_user()
RETURNS trigger
LANGUAGE plpgsql
SECURITY DEFINER SET search_path = public
AS $$
DECLARE
  is_admin boolean;
BEGIN
  is_admin := NEW.email = 'secretsafe.cc@gmail.com';

  INSERT INTO public.user_profiles (
    id,
    email,
    display_name,
    role,
    country,
    weak_subjects,
    trial_start_date,
    trial_end_date,
    subscription_status,
    premium_access,
    onboarding_complete
  )
  VALUES (
    NEW.id,
    NEW.email,
    COALESCE(NEW.raw_user_meta_data->>'display_name', split_part(NEW.email, '@', 1)),
    'student',
    'Ghana',
    '{}',
    now(),
    now() + interval '7 days',
    CASE WHEN is_admin THEN 'active' ELSE 'trial' END,
    is_admin,
    false
  )
  ON CONFLICT (id) DO NOTHING;

  RETURN NEW;
END;
$$;

DROP TRIGGER IF EXISTS on_auth_user_created ON auth.users;

CREATE TRIGGER on_auth_user_created
  AFTER INSERT ON auth.users
  FOR EACH ROW EXECUTE FUNCTION public.handle_new_user();
