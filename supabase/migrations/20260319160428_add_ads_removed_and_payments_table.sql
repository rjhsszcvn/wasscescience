/*
  # Add ads_removed flag and payments table

  ## Summary
  Supports a one-time PayPal payment to permanently remove ads for a user.

  ## Changes

  ### Modified Tables
  - `user_profiles`: adds `ads_removed` boolean column (default false)

  ### New Tables
  - `payments`: stores one-time payment records
    - `id` (uuid, primary key)
    - `user_id` (uuid, FK → auth.users)
    - `paypal_order_id` (text, unique) — the PayPal order ID
    - `product_id` (text) — e.g. "remove_ads"
    - `amount` (numeric) — payment amount
    - `currency` (text) — e.g. "USD"
    - `status` (text) — "COMPLETED" etc.
    - `created_at` (timestamptz)

  ## Security
  - RLS enabled on `payments`
  - Users can only read their own payment records
  - Only the service role (edge function) can insert payment records
*/

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'user_profiles' AND column_name = 'ads_removed'
  ) THEN
    ALTER TABLE user_profiles ADD COLUMN ads_removed boolean NOT NULL DEFAULT false;
  END IF;
END $$;

CREATE TABLE IF NOT EXISTS payments (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id uuid NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  paypal_order_id text UNIQUE NOT NULL,
  product_id text NOT NULL DEFAULT 'remove_ads',
  amount numeric(10, 2) NOT NULL,
  currency text NOT NULL DEFAULT 'USD',
  status text NOT NULL,
  created_at timestamptz NOT NULL DEFAULT now()
);

CREATE INDEX IF NOT EXISTS payments_user_id_idx ON payments (user_id);
CREATE INDEX IF NOT EXISTS payments_paypal_order_id_idx ON payments (paypal_order_id);

ALTER TABLE payments ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Users can view own payments"
  ON payments FOR SELECT
  TO authenticated
  USING (auth.uid() = user_id);
