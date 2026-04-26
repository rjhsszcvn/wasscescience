/*
  # Fix Realtime: Set REPLICA IDENTITY FULL on realtime tables

  ## Problem
  Supabase Realtime with postgres_changes requires REPLICA IDENTITY FULL
  on tables so that the realtime engine can:
  1. Pass full row data for RLS evaluation on each subscriber
  2. Deliver INSERT/UPDATE/DELETE events with full row context

  Without REPLICA IDENTITY FULL, realtime events are silently dropped
  or delivered without enough data to pass RLS filtering.

  ## Changes
  Sets REPLICA IDENTITY FULL on:
  - country_chat_messages (Study Lounge)
  - notifications (notification bell)
  - hub_posts (Student Hub)
  - hub_answers (Student Hub answers)
*/

ALTER TABLE public.country_chat_messages REPLICA IDENTITY FULL;
ALTER TABLE public.notifications REPLICA IDENTITY FULL;
ALTER TABLE public.hub_posts REPLICA IDENTITY FULL;
ALTER TABLE public.hub_answers REPLICA IDENTITY FULL;
