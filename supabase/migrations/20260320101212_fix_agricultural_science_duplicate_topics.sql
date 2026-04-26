/*
  # Fix Agricultural Science duplicate topics

  ## Problem
  The Agricultural Science subject has 40 topics — 20 with full notes (IDs starting b0000001-...)
  and 20 duplicate topics with no notes (IDs starting b8000001-...). The b8 topics also have
  60 quiz questions attached to them that need to be preserved.

  ## Changes
  1. Reassign all quiz_questions from b8 topics to the matching b0 topics (matched by order_index)
  2. Delete the b8 duplicate topics (which will now have no dependent rows)

  ## Notes
  - No user_progress, quiz_sessions, or mastery_checks are attached to the b8 topics
  - Questions are moved to the b0 topic at the same order_index position
*/

UPDATE quiz_questions
SET topic_id = b0.id
FROM (
  SELECT id, order_index FROM topics WHERE id::text LIKE 'b0%'
) b0
JOIN (
  SELECT id, order_index FROM topics WHERE id::text LIKE 'b8%'
) b8 ON b8.order_index = b0.order_index
WHERE quiz_questions.topic_id = b8.id;

DELETE FROM topics WHERE id::text LIKE 'b8%';
