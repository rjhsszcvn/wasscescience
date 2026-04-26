/*
  # Add paypal_capture_id to payments table

  1. Changes
    - Add `paypal_capture_id` column to `payments` table to store the PayPal capture transaction ID
    - This enables better idempotency checks and reconciliation with PayPal

  2. Notes
    - Column is nullable since older records won't have it
    - Helps track the exact capture transaction from PayPal
*/

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'payments' AND column_name = 'paypal_capture_id'
  ) THEN
    ALTER TABLE payments ADD COLUMN paypal_capture_id text;
  END IF;
END $$;
