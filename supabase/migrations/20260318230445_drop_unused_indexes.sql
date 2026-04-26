/*
  # Drop unused indexes

  Removes indexes that have never been used by the query planner.
  These indexes waste write overhead and storage without providing
  any query performance benefit.

  Dropped indexes:
  - idx_exam_sessions_user_id (exam_sessions)
  - idx_exam_sessions_subject_id (exam_sessions)
  - idx_hub_answers_user_id (hub_answers)
  - idx_hub_posts_user_id (hub_posts)
  - idx_hub_posts_subject_id (hub_posts)
  - idx_mastery_attempts_topic_id (mastery_attempts)
  - idx_quiz_attempts_subject_id (quiz_attempts)
  - idx_quiz_attempts_topic_id (quiz_attempts)
  - idx_quiz_sessions_subject_id (quiz_sessions)
  - idx_quiz_sessions_topic_id (quiz_sessions)
  - idx_user_question_history_question_id (user_question_history)
  - idx_user_question_history_subject_id (user_question_history)
*/

DROP INDEX IF EXISTS public.idx_exam_sessions_user_id;
DROP INDEX IF EXISTS public.idx_exam_sessions_subject_id;
DROP INDEX IF EXISTS public.idx_hub_answers_user_id;
DROP INDEX IF EXISTS public.idx_hub_posts_user_id;
DROP INDEX IF EXISTS public.idx_hub_posts_subject_id;
DROP INDEX IF EXISTS public.idx_mastery_attempts_topic_id;
DROP INDEX IF EXISTS public.idx_quiz_attempts_subject_id;
DROP INDEX IF EXISTS public.idx_quiz_attempts_topic_id;
DROP INDEX IF EXISTS public.idx_quiz_sessions_subject_id;
DROP INDEX IF EXISTS public.idx_quiz_sessions_topic_id;
DROP INDEX IF EXISTS public.idx_user_question_history_question_id;
DROP INDEX IF EXISTS public.idx_user_question_history_subject_id;
