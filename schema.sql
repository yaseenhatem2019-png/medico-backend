-- Run once: psql -U postgres -d medico -f schema.sql
CREATE TABLE IF NOT EXISTS users (
  id            UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  name          VARCHAR(100) NOT NULL,
  email         VARCHAR(255) NOT NULL UNIQUE,
  password_hash TEXT NOT NULL,
  role          VARCHAR(20) NOT NULL DEFAULT 'patient' CHECK (role IN ('patient', 'admin')),
  created_at    TIMESTAMPTZ NOT NULL DEFAULT now()
);
