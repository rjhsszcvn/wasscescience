/*
  # Make Student Hub globally accessible

  ## Problem
  The hub_posts and hub_answers SELECT policies were filtering by country,
  meaning users only saw posts from their own country. Since most posts are
  from Sierra Leone and Nigeria, users with country = Ghana (the default)
  saw nothing.

  ## Changes
  1. hub_posts SELECT - allow all authenticated users to read all posts
  2. hub_answers SELECT - allow all authenticated users to read all answers
  3. Keep INSERT/UPDATE/DELETE policies unchanged (still user-scoped)
*/

-- Drop the country-restricted SELECT policies
DROP POLICY IF EXISTS "Users can view posts from same country" ON public.hub_posts;
DROP POLICY IF EXISTS "Users can view answers to accessible posts" ON public.hub_answers;

-- Replace with global authenticated read
CREATE POLICY "Authenticated users can view all posts"
  ON public.hub_posts FOR SELECT
  TO authenticated
  USING (true);

CREATE POLICY "Authenticated users can view all answers"
  ON public.hub_answers FOR SELECT
  TO authenticated
  USING (true);
