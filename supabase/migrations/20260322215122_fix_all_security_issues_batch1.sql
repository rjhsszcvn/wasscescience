/*
  # Fix All Security Issues - Batch 1

  ## Changes:
  1. Add missing indexes for unindexed foreign keys
  2. Fix RLS policies to use (select auth.uid()) pattern for performance
  3. Drop unused indexes
  4. Fix multiple permissive policies on topic_sections and user_profiles
  5. Fix function search_path mutable issue
*/

-- ============================================================
-- 1. ADD MISSING INDEXES FOR FOREIGN KEYS
-- ============================================================

CREATE INDEX IF NOT EXISTS idx_exam_sessions_subject_id ON public.exam_sessions (subject_id);
CREATE INDEX IF NOT EXISTS idx_exam_sessions_user_id ON public.exam_sessions (user_id);
CREATE INDEX IF NOT EXISTS idx_hub_answers_user_id ON public.hub_answers (user_id);
CREATE INDEX IF NOT EXISTS idx_hub_posts_subject_id ON public.hub_posts (subject_id);
CREATE INDEX IF NOT EXISTS idx_hub_posts_user_id ON public.hub_posts (user_id);
CREATE INDEX IF NOT EXISTS idx_mastery_attempts_topic_id ON public.mastery_attempts (topic_id);
CREATE INDEX IF NOT EXISTS idx_quiz_attempts_subject_id ON public.quiz_attempts (subject_id);
CREATE INDEX IF NOT EXISTS idx_quiz_attempts_topic_id ON public.quiz_attempts (topic_id);
CREATE INDEX IF NOT EXISTS idx_quiz_sessions_subject_id ON public.quiz_sessions (subject_id);
CREATE INDEX IF NOT EXISTS idx_quiz_sessions_topic_id ON public.quiz_sessions (topic_id);
CREATE INDEX IF NOT EXISTS idx_user_question_history_question_id ON public.user_question_history (question_id);
CREATE INDEX IF NOT EXISTS idx_user_question_history_subject_id ON public.user_question_history (subject_id);

-- ============================================================
-- 2. DROP UNUSED INDEXES
-- ============================================================

DROP INDEX IF EXISTS public.idx_mastery_attempts_user_id;
DROP INDEX IF EXISTS public.idx_quiz_sessions_user_id;
DROP INDEX IF EXISTS public.payments_user_id_idx;
DROP INDEX IF EXISTS public.payments_paypal_order_id_idx;
DROP INDEX IF EXISTS public.idx_premium_codes_used_by;
DROP INDEX IF EXISTS public.idx_saved_research_created_at;
DROP INDEX IF EXISTS public.idx_country_chat_messages_country_created;
DROP INDEX IF EXISTS public.idx_country_chat_messages_user_id;

-- ============================================================
-- 3. FIX RLS POLICIES ON payments TABLE
-- ============================================================

DROP POLICY IF EXISTS "Users can view own payments" ON public.payments;
CREATE POLICY "Users can view own payments"
  ON public.payments FOR SELECT
  TO authenticated
  USING (user_id = (SELECT auth.uid()));

-- ============================================================
-- 4. FIX RLS POLICIES ON premium_codes TABLE
-- ============================================================

DROP POLICY IF EXISTS "Users can view codes they redeemed" ON public.premium_codes;
CREATE POLICY "Users can view codes they redeemed"
  ON public.premium_codes FOR SELECT
  TO authenticated
  USING (used_by = (SELECT auth.uid()));

-- ============================================================
-- 5. FIX RLS POLICIES ON saved_research TABLE
-- ============================================================

DROP POLICY IF EXISTS "Users can view own saved research" ON public.saved_research;
CREATE POLICY "Users can view own saved research"
  ON public.saved_research FOR SELECT
  TO authenticated
  USING (user_id = (SELECT auth.uid()));

DROP POLICY IF EXISTS "Users can insert own saved research" ON public.saved_research;
CREATE POLICY "Users can insert own saved research"
  ON public.saved_research FOR INSERT
  TO authenticated
  WITH CHECK (user_id = (SELECT auth.uid()));

DROP POLICY IF EXISTS "Users can delete own saved research" ON public.saved_research;
CREATE POLICY "Users can delete own saved research"
  ON public.saved_research FOR DELETE
  TO authenticated
  USING (user_id = (SELECT auth.uid()));

-- ============================================================
-- 6. FIX RLS POLICIES ON country_chat_messages TABLE
-- ============================================================

DROP POLICY IF EXISTS "Users can read messages from their country" ON public.country_chat_messages;
CREATE POLICY "Users can read messages from their country"
  ON public.country_chat_messages FOR SELECT
  TO authenticated
  USING (
    country = (
      SELECT up.country FROM user_profiles up WHERE up.id = (SELECT auth.uid())
    )
  );

DROP POLICY IF EXISTS "Users can insert messages for their own country" ON public.country_chat_messages;
CREATE POLICY "Users can insert messages for their own country"
  ON public.country_chat_messages FOR INSERT
  TO authenticated
  WITH CHECK (
    user_id = (SELECT auth.uid())
    AND country = (
      SELECT up.country FROM user_profiles up WHERE up.id = (SELECT auth.uid())
    )
  );

DROP POLICY IF EXISTS "Users can delete their own messages" ON public.country_chat_messages;
CREATE POLICY "Users can delete their own messages"
  ON public.country_chat_messages FOR DELETE
  TO authenticated
  USING (user_id = (SELECT auth.uid()));

-- ============================================================
-- 7. FIX MULTIPLE PERMISSIVE POLICIES ON topic_sections
-- ============================================================

DROP POLICY IF EXISTS "Authenticated users can read topic sections" ON public.topic_sections;

-- ============================================================
-- 8. FIX MULTIPLE PERMISSIVE POLICIES ON user_profiles
-- ============================================================

DROP POLICY IF EXISTS "Authenticated users can read public profile fields" ON public.user_profiles;

-- ============================================================
-- 9. FIX FUNCTION SEARCH PATH MUTABLE
-- ============================================================

CREATE OR REPLACE FUNCTION public.notify_country_lounge_message()
RETURNS TRIGGER
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
  rec RECORD;
  recent_count INTEGER;
BEGIN
  FOR rec IN
    SELECT id FROM user_profiles
    WHERE country = NEW.country
      AND id <> NEW.user_id
  LOOP
    SELECT COUNT(*) INTO recent_count
    FROM notifications
    WHERE user_id = rec.id
      AND title = 'Study Lounge'
      AND created_at > now() - INTERVAL '5 minutes';

    IF recent_count = 0 THEN
      INSERT INTO notifications (user_id, title, message, type, read)
      VALUES (
        rec.id,
        'Study Lounge',
        NEW.display_name || ' sent a message in your Study Lounge',
        'info',
        false
      );
    END IF;
  END LOOP;

  RETURN NEW;
END;
$$;
