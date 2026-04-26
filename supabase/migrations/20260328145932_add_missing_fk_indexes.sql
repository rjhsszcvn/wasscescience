/*
  # Add Missing Foreign Key Indexes

  ## Summary
  Several foreign key columns lack covering indexes, which can cause full table scans
  when performing joins or lookups by these foreign keys.

  ## Changes
  - Add index on `country_chat_messages.user_id`
  - Add index on `mastery_attempts.user_id`
  - Add index on `payments.user_id`
  - Add index on `premium_codes.used_by`
  - Add index on `quiz_sessions.user_id`
*/

CREATE INDEX IF NOT EXISTS idx_country_chat_messages_user_id
  ON public.country_chat_messages (user_id);

CREATE INDEX IF NOT EXISTS idx_mastery_attempts_user_id
  ON public.mastery_attempts (user_id);

CREATE INDEX IF NOT EXISTS idx_payments_user_id
  ON public.payments (user_id);

CREATE INDEX IF NOT EXISTS idx_premium_codes_used_by
  ON public.premium_codes (used_by);

CREATE INDEX IF NOT EXISTS idx_quiz_sessions_user_id
  ON public.quiz_sessions (user_id);
