/*
  # Fix contact_messages RLS insert policy

  The previous policy used WITH CHECK (true) which is always true and
  flags a security warning. Replace it with a meaningful check that
  ensures submitted messages have non-empty required fields.

  This prevents empty/blank submissions at the database level while
  still allowing any visitor (anon or authenticated) to submit.
*/

DROP POLICY IF EXISTS "Anyone can submit a contact message" ON public.contact_messages;

CREATE POLICY "Submit contact message with valid fields"
  ON public.contact_messages
  FOR INSERT
  TO anon, authenticated
  WITH CHECK (
    length(trim(name)) > 0
    AND length(trim(email)) > 0
    AND length(trim(subject)) > 0
    AND length(trim(message)) > 0
  );
