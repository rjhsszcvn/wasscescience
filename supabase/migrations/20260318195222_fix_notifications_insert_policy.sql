/*
  # Fix notifications INSERT policy - remove always-true WITH CHECK

  ## Purpose
  The "Authenticated users can insert notifications" policy had WITH CHECK (true) which
  effectively bypasses row-level security for authenticated users on INSERT.

  ## Change
  Replace the always-true policy with one that validates the target user_id exists
  in user_profiles. This allows authenticated users to create notifications for other
  users (needed for the hub feature where answering a post notifies the post owner),
  while ensuring notifications can only be created for real users.
*/

DROP POLICY IF EXISTS "Authenticated users can insert notifications" ON public.notifications;

CREATE POLICY "Authenticated users can insert notifications for valid users"
  ON public.notifications FOR INSERT
  TO authenticated
  WITH CHECK (
    EXISTS (
      SELECT 1 FROM public.user_profiles WHERE id = notifications.user_id
    )
  );
