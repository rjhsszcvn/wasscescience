/*
  # Drop unused indexes

  ## Purpose
  Remove indexes that are not being used by any queries. Unused indexes consume
  storage space and slow down write operations (INSERT, UPDATE, DELETE) without
  providing any read performance benefit.

  ## Indexes Dropped
  - idx_user_progress_topic on user_progress
  - idx_mastery_checks_topic_id on mastery_checks
  - idx_mastery_attempts_user_topic on mastery_attempts
  - idx_user_question_history_user on user_question_history
  - idx_quiz_sessions_user on quiz_sessions
*/

DROP INDEX IF EXISTS public.idx_user_progress_topic;
DROP INDEX IF EXISTS public.idx_mastery_checks_topic_id;
DROP INDEX IF EXISTS public.idx_mastery_attempts_user_topic;
DROP INDEX IF EXISTS public.idx_user_question_history_user;
DROP INDEX IF EXISTS public.idx_quiz_sessions_user;
