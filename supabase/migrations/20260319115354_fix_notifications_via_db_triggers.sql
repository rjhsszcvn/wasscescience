/*
  # Fix Notifications System via Database Triggers

  ## Problem
  The client-side notification code in StudentHub.tsx was silently failing because
  the user_profiles RLS SELECT policy only allows users to see their own row.
  When sendNotificationToAllUsers() queried user_profiles to get all user IDs,
  it only received the current user's own row, then filtered that out, resulting
  in zero notifications ever being inserted.

  ## Solution
  Replace client-side notification logic with server-side database triggers that
  run with SECURITY DEFINER (bypassing RLS) to correctly read all user IDs.

  ## Triggers Created

  1. `trg_notify_on_hub_post` — fires AFTER INSERT on hub_posts
     - For announcement/material posts: notifies all users in the same country
       (excluding the post author)
     - For question posts: no notification (questions only notify when answered)

  2. `trg_notify_on_hub_answer` — fires AFTER INSERT on hub_answers
     - Notifies the question author that their question received a new answer
       (excluding self-answers)

  ## Security
  Both trigger functions use SECURITY DEFINER so they can bypass RLS to read
  all user_profiles rows. They are owned by the postgres role.
*/

-- Function: notify all same-country users when an announcement or material is posted
CREATE OR REPLACE FUNCTION notify_on_hub_post()
RETURNS TRIGGER
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
  v_title    TEXT;
  v_message  TEXT;
  v_type     TEXT := 'info';
  v_author   TEXT;
BEGIN
  -- Only notify for announcements and materials (not questions)
  IF NEW.post_type NOT IN ('announcement', 'material') THEN
    RETURN NEW;
  END IF;

  -- Get the author's display name
  SELECT display_name INTO v_author
  FROM user_profiles
  WHERE id = NEW.user_id;

  v_author := COALESCE(v_author, 'A student');

  IF NEW.post_type = 'announcement' THEN
    v_title   := 'New Announcement: ' || LEFT(NEW.title, 60);
    v_message := v_author || ' posted an announcement. Tap to read it.';
    v_type    := 'info';
  ELSIF NEW.post_type = 'material' THEN
    v_title   := 'New Study Material: ' || LEFT(NEW.title, 60);
    v_message := v_author || ' shared a new material: "' || LEFT(COALESCE(NEW.material_name, NEW.title), 50) || '". Tap to download.';
    v_type    := 'success';
  END IF;

  -- Insert one notification per user in the same country, excluding the author
  INSERT INTO notifications (user_id, title, message, type, read)
  SELECT
    up.id,
    v_title,
    v_message,
    v_type,
    false
  FROM user_profiles up
  WHERE up.country = NEW.country
    AND up.id <> NEW.user_id;

  RETURN NEW;
END;
$$;

-- Function: notify question author when their post receives a new answer
CREATE OR REPLACE FUNCTION notify_on_hub_answer()
RETURNS TRIGGER
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
  v_post_author_id  UUID;
  v_post_title      TEXT;
  v_answer_author   TEXT;
BEGIN
  -- Get the post author and title
  SELECT user_id, title INTO v_post_author_id, v_post_title
  FROM hub_posts
  WHERE id = NEW.post_id;

  -- Don't notify if the answerer is the post author
  IF v_post_author_id IS NULL OR v_post_author_id = NEW.user_id THEN
    RETURN NEW;
  END IF;

  -- Get the answerer's display name
  SELECT display_name INTO v_answer_author
  FROM user_profiles
  WHERE id = NEW.user_id;

  v_answer_author := COALESCE(v_answer_author, NEW.author_name, 'Someone');

  -- Insert notification for the post author
  INSERT INTO notifications (user_id, title, message, type, read)
  VALUES (
    v_post_author_id,
    v_answer_author || ' answered your question',
    'Your question "' || LEFT(v_post_title, 60) || '" received a new answer. Check it out in the Student Hub!',
    'info',
    false
  );

  RETURN NEW;
END;
$$;

-- Drop existing triggers if they exist before recreating
DROP TRIGGER IF EXISTS trg_notify_on_hub_post ON hub_posts;
DROP TRIGGER IF EXISTS trg_notify_on_hub_answer ON hub_answers;

-- Create triggers
CREATE TRIGGER trg_notify_on_hub_post
  AFTER INSERT ON hub_posts
  FOR EACH ROW
  EXECUTE FUNCTION notify_on_hub_post();

CREATE TRIGGER trg_notify_on_hub_answer
  AFTER INSERT ON hub_answers
  FOR EACH ROW
  EXECUTE FUNCTION notify_on_hub_answer();
