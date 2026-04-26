/*
  # Add Notification Trigger for Mark-as-Solved

  ## Problem
  The client-side markSolved notification calls in StudentHub.tsx still reference
  the removed sendNotificationToUser function (which couldn't read other user profiles
  due to RLS). These need to be handled server-side.

  ## Solution
  Add a trigger on hub_answers that fires when is_accepted changes from false to true.
  It notifies the answer author that their answer was accepted as the solution.
  It also notifies the post author (if different from the answer author) that their
  question was solved.

  Both notifications are inserted with SECURITY DEFINER to bypass RLS.
*/

CREATE OR REPLACE FUNCTION notify_on_answer_accepted()
RETURNS TRIGGER
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
  v_post_author_id  UUID;
  v_post_title      TEXT;
  v_acceptor_name   TEXT;
  v_answer_author   TEXT;
BEGIN
  -- Only fire when is_accepted changes to true
  IF OLD.is_accepted = true OR NEW.is_accepted IS NOT TRUE THEN
    RETURN NEW;
  END IF;

  -- Get post info
  SELECT user_id, title INTO v_post_author_id, v_post_title
  FROM hub_posts
  WHERE id = NEW.post_id;

  -- Get the answer author's name
  SELECT display_name INTO v_answer_author
  FROM user_profiles
  WHERE id = NEW.user_id;
  v_answer_author := COALESCE(v_answer_author, NEW.author_name, 'A student');

  -- Get the person who accepted (post author)
  SELECT display_name INTO v_acceptor_name
  FROM user_profiles
  WHERE id = v_post_author_id;
  v_acceptor_name := COALESCE(v_acceptor_name, 'The student');

  -- Notify the answer author (if they are not the post author)
  IF NEW.user_id <> v_post_author_id THEN
    INSERT INTO notifications (user_id, title, message, type, read)
    VALUES (
      NEW.user_id,
      'Your answer was marked as the solution!',
      v_acceptor_name || ' marked your answer to "' || LEFT(v_post_title, 60) || '" as solved. Consider sending a thank you!',
      'success',
      false
    );
  END IF;

  RETURN NEW;
END;
$$;

DROP TRIGGER IF EXISTS trg_notify_on_answer_accepted ON hub_answers;

CREATE TRIGGER trg_notify_on_answer_accepted
  AFTER UPDATE OF is_accepted ON hub_answers
  FOR EACH ROW
  EXECUTE FUNCTION notify_on_answer_accepted();
