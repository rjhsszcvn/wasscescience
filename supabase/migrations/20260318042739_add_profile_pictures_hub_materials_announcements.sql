/*
  # Add Profile Pictures, Hub Materials, Announcements, and Enhanced Hub Features

  1. Changes
    - `user_profiles`: add `avatar_url` column for profile picture URL
    - `hub_posts`: add `post_type` column ('question' | 'announcement' | 'material')
      add `is_solved` column for question solved state
      add `material_url` column for uploaded file URL
      add `material_name` column for uploaded file display name
      add `material_type` column for file mime type
    - `hub_answers`: add `triggers_thank_you` column to track notifications sent
    - New RLS policies for the new columns (no new tables, just column additions)

  2. Notes
    - Files are uploaded to Supabase Storage (profile-pictures bucket and hub-materials bucket)
    - All new columns use safe defaults
*/

-- Add avatar_url to user_profiles
DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'user_profiles' AND column_name = 'avatar_url'
  ) THEN
    ALTER TABLE user_profiles ADD COLUMN avatar_url text DEFAULT NULL;
  END IF;
END $$;

-- Add post_type, is_solved, material columns to hub_posts
DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'hub_posts' AND column_name = 'post_type'
  ) THEN
    ALTER TABLE hub_posts ADD COLUMN post_type text DEFAULT 'question';
  END IF;
END $$;

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'hub_posts' AND column_name = 'is_solved'
  ) THEN
    ALTER TABLE hub_posts ADD COLUMN is_solved boolean DEFAULT false;
  END IF;
END $$;

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'hub_posts' AND column_name = 'material_url'
  ) THEN
    ALTER TABLE hub_posts ADD COLUMN material_url text DEFAULT NULL;
  END IF;
END $$;

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'hub_posts' AND column_name = 'material_name'
  ) THEN
    ALTER TABLE hub_posts ADD COLUMN material_name text DEFAULT NULL;
  END IF;
END $$;

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'hub_posts' AND column_name = 'material_type'
  ) THEN
    ALTER TABLE hub_posts ADD COLUMN material_type text DEFAULT NULL;
  END IF;
END $$;

-- Add thank_you_sent to hub_answers
DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'hub_answers' AND column_name = 'thank_you_sent'
  ) THEN
    ALTER TABLE hub_answers ADD COLUMN thank_you_sent boolean DEFAULT false;
  END IF;
END $$;

-- Create storage buckets (handled via SQL insert into storage.buckets)
INSERT INTO storage.buckets (id, name, public)
VALUES ('profile-pictures', 'profile-pictures', true)
ON CONFLICT (id) DO NOTHING;

INSERT INTO storage.buckets (id, name, public)
VALUES ('hub-materials', 'hub-materials', true)
ON CONFLICT (id) DO NOTHING;

-- Storage policies for profile-pictures bucket
DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_policies
    WHERE tablename = 'objects' AND schemaname = 'storage' AND policyname = 'Users can upload their own profile picture'
  ) THEN
    CREATE POLICY "Users can upload their own profile picture"
      ON storage.objects FOR INSERT
      TO authenticated
      WITH CHECK (bucket_id = 'profile-pictures' AND auth.uid()::text = (storage.foldername(name))[1]);
  END IF;
END $$;

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_policies
    WHERE tablename = 'objects' AND schemaname = 'storage' AND policyname = 'Users can update their own profile picture'
  ) THEN
    CREATE POLICY "Users can update their own profile picture"
      ON storage.objects FOR UPDATE
      TO authenticated
      USING (bucket_id = 'profile-pictures' AND auth.uid()::text = (storage.foldername(name))[1]);
  END IF;
END $$;

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_policies
    WHERE tablename = 'objects' AND schemaname = 'storage' AND policyname = 'Profile pictures are publicly readable'
  ) THEN
    CREATE POLICY "Profile pictures are publicly readable"
      ON storage.objects FOR SELECT
      TO public
      USING (bucket_id = 'profile-pictures');
  END IF;
END $$;

-- Storage policies for hub-materials bucket
DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_policies
    WHERE tablename = 'objects' AND schemaname = 'storage' AND policyname = 'Authenticated users can upload hub materials'
  ) THEN
    CREATE POLICY "Authenticated users can upload hub materials"
      ON storage.objects FOR INSERT
      TO authenticated
      WITH CHECK (bucket_id = 'hub-materials');
  END IF;
END $$;

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_policies
    WHERE tablename = 'objects' AND schemaname = 'storage' AND policyname = 'Hub materials are publicly readable'
  ) THEN
    CREATE POLICY "Hub materials are publicly readable"
      ON storage.objects FOR SELECT
      TO public
      USING (bucket_id = 'hub-materials');
  END IF;
END $$;
