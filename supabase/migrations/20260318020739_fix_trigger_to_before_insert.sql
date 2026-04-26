
/*
  # Fix email auto-confirm trigger timing

  ## Summary
  Changes the email auto-confirm logic to use a BEFORE INSERT trigger so that
  email_confirmed_at is set BEFORE the row is committed, ensuring Supabase
  generates an active session in the signup response.

  Also keeps the profile creation as a separate AFTER INSERT trigger.
*/

CREATE OR REPLACE FUNCTION public.auto_confirm_user_email()
RETURNS trigger
LANGUAGE plpgsql
SECURITY DEFINER SET search_path = auth
AS $$
BEGIN
  NEW.email_confirmed_at := COALESCE(NEW.email_confirmed_at, now());
  RETURN NEW;
END;
$$;

DROP TRIGGER IF EXISTS before_auth_user_created ON auth.users;

CREATE TRIGGER before_auth_user_created
  BEFORE INSERT ON auth.users
  FOR EACH ROW EXECUTE FUNCTION public.auto_confirm_user_email();

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
    true,
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
