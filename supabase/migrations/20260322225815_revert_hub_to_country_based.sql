/*
  # Revert Student Hub to country-based access

  ## Changes
  The previous migration made hub posts globally readable (all countries).
  This reverts to country-based access — users only see posts from their own country,
  which is the intended design.

  Drops the global policies and restores the original country-filtered ones.
*/

DROP POLICY IF EXISTS "Authenticated users can view all posts" ON public.hub_posts;
DROP POLICY IF EXISTS "Authenticated users can view all answers" ON public.hub_answers;

CREATE POLICY "Users can view posts from same country"
  ON public.hub_posts FOR SELECT
  TO authenticated
  USING (country = (SELECT country FROM user_profiles WHERE id = (SELECT auth.uid())));

CREATE POLICY "Users can view answers to accessible posts"
  ON public.hub_answers FOR SELECT
  TO authenticated
  USING (
    EXISTS (
      SELECT 1 FROM hub_posts hp
      JOIN user_profiles up ON up.id = (SELECT auth.uid())
      WHERE hp.id = hub_answers.post_id
      AND hp.country = up.country
    )
  );
