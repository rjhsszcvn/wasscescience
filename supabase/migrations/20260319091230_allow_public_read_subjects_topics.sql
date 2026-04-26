/*
  # Allow public read access to subjects and topics

  1. Changes
    - Drop the authenticated-only SELECT policy on `subjects`
    - Add a public SELECT policy so guests can browse subjects
    - Check topics table for the same issue and fix it too

  2. Reason
    - Guests landing on the Browse Subjects page were seeing nothing
      because the RLS policy only allowed authenticated users to read subjects.
*/

DROP POLICY IF EXISTS "Authenticated users can view subjects" ON subjects;

CREATE POLICY "Anyone can view subjects"
  ON subjects
  FOR SELECT
  TO public
  USING (true);

DROP POLICY IF EXISTS "Authenticated users can view topics" ON topics;

CREATE POLICY "Anyone can view topics"
  ON topics
  FOR SELECT
  TO public
  USING (true);

DROP POLICY IF EXISTS "Authenticated users can view topic sections" ON topic_sections;

CREATE POLICY "Anyone can view topic sections"
  ON topic_sections
  FOR SELECT
  TO public
  USING (true);
