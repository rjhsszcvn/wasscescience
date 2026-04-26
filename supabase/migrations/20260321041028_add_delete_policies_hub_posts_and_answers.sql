/*
  # Add DELETE RLS policies for hub_posts and hub_answers

  ## Problem
  hub_posts and hub_answers had no DELETE policy, so delete operations
  were silently blocked by RLS. The UI optimistically removed items from
  local state, making it appear deleted — but on refresh the data
  reappeared from the database unchanged.

  ## Changes
  - Add DELETE policy on hub_posts: only the post owner can delete their post
  - Add DELETE policy on hub_answers: only the answer author can delete their answer
*/

CREATE POLICY "Users can delete own posts"
  ON hub_posts
  FOR DELETE
  TO authenticated
  USING (user_id = (SELECT auth.uid()));

CREATE POLICY "Users can delete own answers"
  ON hub_answers
  FOR DELETE
  TO authenticated
  USING (user_id = (SELECT auth.uid()));
