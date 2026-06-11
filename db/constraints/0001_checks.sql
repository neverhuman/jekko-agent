-- Constraint scaffold for durable truth.
SET lock_timeout = '5s';
SET statement_timeout = '5min';
ALTER TABLE jankurai_db_health
  ADD CONSTRAINT jankurai_db_health_id_positive CHECK (id > 0);
