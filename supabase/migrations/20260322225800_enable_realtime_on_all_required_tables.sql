/*
  # Enable Supabase Realtime on required tables

  ## Problem
  No tables were added to the supabase_realtime publication, which means:
  - Study Lounge messages from other users never arrived in real time
  - Notifications were never pushed to clients in real time
  - Hub posts/answers changes were not reflected live

  ## Changes
  Adds the following tables to the supabase_realtime publication:
  - country_chat_messages (Study Lounge live chat)
  - notifications (live notification bell updates)
  - hub_posts (live hub feed updates)
  - hub_answers (live answer updates in hub post view)
*/

ALTER PUBLICATION supabase_realtime ADD TABLE public.country_chat_messages;
ALTER PUBLICATION supabase_realtime ADD TABLE public.notifications;
ALTER PUBLICATION supabase_realtime ADD TABLE public.hub_posts;
ALTER PUBLICATION supabase_realtime ADD TABLE public.hub_answers;
