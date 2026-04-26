/*
  # Study Lounge Chat Notifications

  ## Overview
  Creates a database trigger that automatically creates notifications for all users
  in the same country when a new chat message arrives. Notifications are throttled
  to avoid flooding - only one notification per sender per user per 5 minutes.

  ## Changes
  - New function: notify_country_lounge_message()
  - New trigger: on_lounge_message_insert on country_chat_messages
*/

CREATE OR REPLACE FUNCTION notify_country_lounge_message()
RETURNS TRIGGER
LANGUAGE plpgsql
SECURITY DEFINER
AS $$
DECLARE
  rec RECORD;
  recent_count INTEGER;
BEGIN
  FOR rec IN
    SELECT id FROM user_profiles
    WHERE country = NEW.country
      AND id <> NEW.user_id
  LOOP
    SELECT COUNT(*) INTO recent_count
    FROM notifications
    WHERE user_id = rec.id
      AND title = 'Study Lounge'
      AND created_at > now() - INTERVAL '5 minutes';

    IF recent_count = 0 THEN
      INSERT INTO notifications (user_id, title, message, type, read)
      VALUES (
        rec.id,
        'Study Lounge',
        NEW.display_name || ' sent a message in your Study Lounge',
        'info',
        false
      );
    END IF;
  END LOOP;

  RETURN NEW;
END;
$$;

DROP TRIGGER IF EXISTS on_lounge_message_insert ON country_chat_messages;

CREATE TRIGGER on_lounge_message_insert
  AFTER INSERT ON country_chat_messages
  FOR EACH ROW
  EXECUTE FUNCTION notify_country_lounge_message();
