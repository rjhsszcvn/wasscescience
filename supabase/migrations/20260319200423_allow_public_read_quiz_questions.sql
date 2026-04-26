/*
  # Allow public read access to quiz_questions

  ## Problem
  The quiz_questions table has an RLS policy that restricts SELECT to `authenticated`
  users only. This means guests (unauthenticated users) receive zero questions when
  attempting a quiz, so the quiz appears empty in guest mode.

  ## Change
  - Drop the existing authenticated-only SELECT policy
  - Create a new public SELECT policy so any visitor (guest or logged-in) can read questions

  ## Security Notes
  - Quiz questions are non-sensitive educational content — public read is appropriate
  - Write operations (INSERT, UPDATE, DELETE) remain admin-only (no public write policies)
  - This mirrors the same pattern already applied to subjects, topics, and topic_sections
*/

DROP POLICY IF EXISTS "Authenticated users can view quiz questions" ON quiz_questions;

CREATE POLICY "Anyone can view quiz questions"
  ON quiz_questions
  FOR SELECT
  TO public
  USING (true);
