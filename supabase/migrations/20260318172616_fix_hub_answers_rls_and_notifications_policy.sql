/*
  # Fix Hub Answers RLS and Notifications Policy

  1. Changes
    - hub_answers: Add policy allowing post owners to update any answer on their post (needed for "Mark Solved")
    - notifications: Tighten INSERT policy so only authenticated users can insert notifications

  2. Security
    - The existing update policy only allows users to edit their own answers
    - Post owners need to set `is_accepted = true` on other users' answers — this adds that capability
    - Notifications INSERT is changed from `USING (true)` to require authentication
*/

DROP POLICY IF EXISTS "Post owners can accept answers on their posts" ON hub_answers;
CREATE POLICY "Post owners can accept answers on their posts"
  ON hub_answers FOR UPDATE
  TO authenticated
  USING (
    EXISTS (
      SELECT 1 FROM hub_posts
      WHERE hub_posts.id = hub_answers.post_id
        AND hub_posts.user_id = auth.uid()
    )
  )
  WITH CHECK (
    EXISTS (
      SELECT 1 FROM hub_posts
      WHERE hub_posts.id = hub_answers.post_id
        AND hub_posts.user_id = auth.uid()
    )
  );

DROP POLICY IF EXISTS "System can insert notifications" ON notifications;
CREATE POLICY "Authenticated users can insert notifications"
  ON notifications FOR INSERT
  TO authenticated
  WITH CHECK (true);
