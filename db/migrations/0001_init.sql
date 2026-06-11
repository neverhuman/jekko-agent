-- Initial database scaffold for durable truth.
CREATE TABLE IF NOT EXISTS jankurai_db_health (
    id BIGSERIAL PRIMARY KEY,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
