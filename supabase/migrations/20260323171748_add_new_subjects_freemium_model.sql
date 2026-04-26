/*
  # Freemium Model Update & New Subjects

  ## Summary
  This migration transitions the platform from a "7-day free trial" model to a strict freemium model,
  and adds three new premium subjects: Core Science, Health Science, and Physical Education.

  ## Changes

  ### 1. New Subjects Added
  - `Core Science` (Premium-only) - integrated science for WASSCE
  - `Health Science` (Premium-only) - health education for WASSCE
  - `Physical Education` (Premium-only) - PE for WASSCE

  ### 2. Existing Subjects: Free vs Premium
  - Mathematics: is_premium = false (free access)
  - English Language: is_premium = false (free access)
  - All other subjects: is_premium = true (premium-only)

  ### 3. No Schema Changes
  - The trial_started_at column remains but will no longer be functionally used for access control
  - premium_expires_at remains as the sole access gate for premium content
  - The freemium access logic will be handled at the application layer

  ## Notes
  - Mathematics and English remain freely accessible to all signed-in users
  - All other subjects require premium subscription
  - New subjects default to premium (is_premium = true)
*/

-- Update existing subjects: Mathematics and English are FREE, all others are PREMIUM
UPDATE subjects SET is_premium = false WHERE name IN ('Mathematics', 'English Language');
UPDATE subjects SET is_premium = true WHERE name NOT IN ('Mathematics', 'English Language');

-- Add Core Science (Premium)
INSERT INTO subjects (name, description, icon, color, is_premium, order_index)
SELECT
  'Core Science',
  'Integrated science covering biology, chemistry, and physics fundamentals for WASSCE preparation.',
  'FlaskConical',
  '#0ea5e9',
  true,
  (SELECT COALESCE(MAX(order_index), 0) + 1 FROM subjects)
WHERE NOT EXISTS (SELECT 1 FROM subjects WHERE name = 'Core Science');

-- Add Health Science (Premium)
INSERT INTO subjects (name, description, icon, color, is_premium, order_index)
SELECT
  'Health Science',
  'Comprehensive health education covering human health, disease prevention, and wellness for WASSCE.',
  'Heart',
  '#ef4444',
  true,
  (SELECT COALESCE(MAX(order_index), 0) + 1 FROM subjects)
WHERE NOT EXISTS (SELECT 1 FROM subjects WHERE name = 'Health Science');

-- Add Physical Education (Premium)
INSERT INTO subjects (name, description, icon, color, is_premium, order_index)
SELECT
  'Physical Education',
  'Physical education theory covering sports science, fitness principles, and health for WASSCE.',
  'Activity',
  '#22c55e',
  true,
  (SELECT COALESCE(MAX(order_index), 0) + 1 FROM subjects)
WHERE NOT EXISTS (SELECT 1 FROM subjects WHERE name = 'Physical Education');
