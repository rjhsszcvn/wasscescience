/*
  # Create saved_research table

  ## Purpose
  Stores research answers saved by authenticated users.

  ## New Tables
  - `saved_research`
    - `id` (uuid, primary key)
    - `user_id` (uuid, FK to auth.users)
    - `query` (text) — the user's original question
    - `answer_title` (text) — title of the answer for list display
    - `answer_preview` (text) — short snippet for list display
    - `answer_data` (jsonb) — the full ResearchAnswer object
    - `created_at` (timestamptz)

  ## Security
  - RLS enabled: users can only read/write their own saved research
*/

CREATE TABLE IF NOT EXISTS saved_research (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id uuid NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  query text NOT NULL,
  answer_title text NOT NULL,
  answer_preview text NOT NULL DEFAULT '',
  answer_data jsonb NOT NULL DEFAULT '{}',
  created_at timestamptz DEFAULT now()
);

CREATE INDEX IF NOT EXISTS idx_saved_research_user_id ON saved_research(user_id);
CREATE INDEX IF NOT EXISTS idx_saved_research_created_at ON saved_research(created_at DESC);

ALTER TABLE saved_research ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Users can view own saved research"
  ON saved_research FOR SELECT
  TO authenticated
  USING (auth.uid() = user_id);

CREATE POLICY "Users can insert own saved research"
  ON saved_research FOR INSERT
  TO authenticated
  WITH CHECK (auth.uid() = user_id);

CREATE POLICY "Users can delete own saved research"
  ON saved_research FOR DELETE
  TO authenticated
  USING (auth.uid() = user_id);
