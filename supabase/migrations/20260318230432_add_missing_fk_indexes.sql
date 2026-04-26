/*
  # Add missing foreign key covering indexes

  Adds indexes on foreign key columns that were flagged as unindexed,
  which can cause full table scans during joins and cascading deletes.

  Affected tables and columns:
  - mastery_attempts.user_id
  - mastery_checks.topic_id
  - quiz_sessions.user_id
  - user_progress.topic_id
*/

CREATE INDEX IF NOT EXISTS idx_mastery_attempts_user_id
  ON public.mastery_attempts (user_id);

CREATE INDEX IF NOT EXISTS idx_mastery_checks_topic_id
  ON public.mastery_checks (topic_id);

CREATE INDEX IF NOT EXISTS idx_quiz_sessions_user_id
  ON public.quiz_sessions (user_id);

CREATE INDEX IF NOT EXISTS idx_user_progress_topic_id
  ON public.user_progress (topic_id);
