/*
  # Study Lounge - Country-Based Real-Time Chat System

  ## Overview
  Creates a premium WhatsApp-style group chat feature called "Study Lounge" where
  students from the same country can chat in real time. Each country has its own
  dedicated chat room. Messages display the sender's name and avatar.

  ## New Tables

  ### 1. `country_chat_messages`
    - `id` (uuid, PK)
    - `country` (text) - The country room this message belongs to
    - `user_id` (uuid, FK to user_profiles)
    - `display_name` (text) - Sender's display name at time of message
    - `avatar_url` (text, nullable) - Sender's avatar URL at time of message
    - `content` (text) - Message text content
    - `created_at` (timestamptz)

  ## Security
    - RLS enabled on all new tables
    - Authenticated users can read messages from their own country
    - Authenticated users can insert messages only for their own country
    - Users can only delete their own messages
    - No update allowed (immutable messages)

  ## Indexes
    - Index on (country, created_at) for efficient pagination
    - Index on user_id for FK performance
*/

CREATE TABLE IF NOT EXISTS country_chat_messages (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  country text NOT NULL,
  user_id uuid NOT NULL REFERENCES user_profiles(id) ON DELETE CASCADE,
  display_name text NOT NULL DEFAULT '',
  avatar_url text,
  content text NOT NULL CHECK (char_length(content) BETWEEN 1 AND 2000),
  created_at timestamptz DEFAULT now()
);

CREATE INDEX IF NOT EXISTS idx_country_chat_messages_country_created 
  ON country_chat_messages (country, created_at DESC);

CREATE INDEX IF NOT EXISTS idx_country_chat_messages_user_id 
  ON country_chat_messages (user_id);

ALTER TABLE country_chat_messages ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Users can read messages from their country"
  ON country_chat_messages FOR SELECT
  TO authenticated
  USING (
    country = (
      SELECT up.country FROM user_profiles up WHERE up.id = auth.uid()
    )
  );

CREATE POLICY "Users can insert messages for their own country"
  ON country_chat_messages FOR INSERT
  TO authenticated
  WITH CHECK (
    auth.uid() = user_id
    AND country = (
      SELECT up.country FROM user_profiles up WHERE up.id = auth.uid()
    )
  );

CREATE POLICY "Users can delete their own messages"
  ON country_chat_messages FOR DELETE
  TO authenticated
  USING (auth.uid() = user_id);
