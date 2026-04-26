/*
  # Drop Unused Indexes

  ## Summary
  The following indexes have never been used and are consuming storage and
  adding overhead to write operations without providing any query benefit.

  ## Dropped Indexes
  - `idx_exam_sessions_subject_id` on exam_sessions
  - `idx_exam_sessions_user_id` on exam_sessions
  - `idx_hub_answers_user_id` on hub_answers
  - `idx_hub_posts_subject_id` on hub_posts
  - `idx_hub_posts_user_id` on hub_posts
  - `idx_mastery_attempts_topic_id` on mastery_attempts
  - `idx_quiz_attempts_subject_id` on quiz_attempts
  - `idx_quiz_attempts_topic_id` on quiz_attempts
  - `idx_quiz_sessions_subject_id` on quiz_sessions
  - `idx_quiz_sessions_topic_id` on quiz_sessions
  - `idx_user_question_history_question_id` on user_question_history
  - `idx_admin_login_attempts_fingerprint` on admin_login_attempts
  - `idx_admin_login_attempts_attempted_at` on admin_login_attempts
  - `idx_admin_banned_devices_fingerprint` on admin_banned_devices
*/

DROP INDEX IF EXISTS public.idx_exam_sessions_subject_id;
DROP INDEX IF EXISTS public.idx_exam_sessions_user_id;
DROP INDEX IF EXISTS public.idx_hub_answers_user_id;
DROP INDEX IF EXISTS public.idx_hub_posts_subject_id;
DROP INDEX IF EXISTS public.idx_hub_posts_user_id;
DROP INDEX IF EXISTS public.idx_mastery_attempts_topic_id;
DROP INDEX IF EXISTS public.idx_quiz_attempts_subject_id;
DROP INDEX IF EXISTS public.idx_quiz_attempts_topic_id;
DROP INDEX IF EXISTS public.idx_quiz_sessions_subject_id;
DROP INDEX IF EXISTS public.idx_quiz_sessions_topic_id;
DROP INDEX IF EXISTS public.idx_user_question_history_question_id;
DROP INDEX IF EXISTS public.idx_admin_login_attempts_fingerprint;
DROP INDEX IF EXISTS public.idx_admin_login_attempts_attempted_at;
DROP INDEX IF EXISTS public.idx_admin_banned_devices_fingerprint;
