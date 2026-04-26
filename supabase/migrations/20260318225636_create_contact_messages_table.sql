/*
  # Create contact_messages table

  1. New Tables
    - `contact_messages`
      - `id` (uuid, primary key)
      - `name` (text, sender full name)
      - `email` (text, sender email)
      - `subject` (text, message subject category)
      - `message` (text, message body)
      - `created_at` (timestamptz)

  2. Security
    - Enable RLS
    - Allow anyone (including unauthenticated users) to INSERT (contact form is public)
    - No SELECT policy for regular users — only service role can read messages
*/

CREATE TABLE IF NOT EXISTS contact_messages (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  name text NOT NULL,
  email text NOT NULL,
  subject text NOT NULL,
  message text NOT NULL,
  created_at timestamptz DEFAULT now()
);

ALTER TABLE contact_messages ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Anyone can submit a contact message"
  ON contact_messages
  FOR INSERT
  TO anon, authenticated
  WITH CHECK (true);
