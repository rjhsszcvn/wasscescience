
/*
  # Auto-confirm user emails on signup

  ## Summary
  Updates the `handle_new_user` trigger function to also auto-confirm
  the user's email immediately upon registration. This bypasses Supabase's
  email confirmation requirement so users can sign in immediately after
  signing up without waiting for a verification email.

  ## Changes
  - Modified `handle_new_user()` to set `email_confirmed_at = now()` on the new user row
  - This prevents "email rate limit exceeded" errors from confirmation emails being sent
  - Users can sign in immediately after creating an account
*/

CREATE OR REPLACE FUNCTION public.handle_new_user()
RETURNS trigger
LANGUAGE plpgsql
SECURITY DEFINER SET search_path = public, auth
AS $$
DECLARE
  is_admin boolean;
BEGIN
  is_admin := NEW.email = 'secretsafe.cc@gmail.com';

  UPDATE auth.users
  SET email_confirmed_at = now()
  WHERE id = NEW.id AND email_confirmed_at IS NULL;

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
    true,
    false
  )
  ON CONFLICT (id) DO NOTHING;

  RETURN NEW;
END;
$$;
