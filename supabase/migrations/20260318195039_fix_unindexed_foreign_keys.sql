/*
  # Add indexes for unindexed foreign keys

  ## Purpose
  Several tables have foreign key constraints without covering indexes, which causes
  full table scans when joining or filtering by these columns.

  ## Changes
  - exam_sessions: add indexes on user_id and subject_id
  - hub_answers: add index on user_id
  - hub_posts: add indexes on user_id and subject_id
  - mastery_attempts: add index on topic_id
  - quiz_attempts: add indexes on subject_id and topic_id
  - quiz_sessions: add indexes on subject_id and topic_id
  - user_question_history: add indexes on question_id and subject_id
*/

CREATE INDEX IF NOT EXISTS idx_exam_sessions_user_id ON public.exam_sessions(user_id);
CREATE INDEX IF NOT EXISTS idx_exam_sessions_subject_id ON public.exam_sessions(subject_id);

CREATE INDEX IF NOT EXISTS idx_hub_answers_user_id ON public.hub_answers(user_id);

CREATE INDEX IF NOT EXISTS idx_hub_posts_user_id ON public.hub_posts(user_id);
CREATE INDEX IF NOT EXISTS idx_hub_posts_subject_id ON public.hub_posts(subject_id);

CREATE INDEX IF NOT EXISTS idx_mastery_attempts_topic_id ON public.mastery_attempts(topic_id);

CREATE INDEX IF NOT EXISTS idx_quiz_attempts_subject_id ON public.quiz_attempts(subject_id);
CREATE INDEX IF NOT EXISTS idx_quiz_attempts_topic_id ON public.quiz_attempts(topic_id);

CREATE INDEX IF NOT EXISTS idx_quiz_sessions_subject_id ON public.quiz_sessions(subject_id);
CREATE INDEX IF NOT EXISTS idx_quiz_sessions_topic_id ON public.quiz_sessions(topic_id);

CREATE INDEX IF NOT EXISTS idx_user_question_history_question_id ON public.user_question_history(question_id);
CREATE INDEX IF NOT EXISTS idx_user_question_history_subject_id ON public.user_question_history(subject_id);
