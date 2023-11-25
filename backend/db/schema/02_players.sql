DROP TABLE IF EXISTS players;

CREATE TABLE players(
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) UNIQUE NOT NULL,
  enqueued_at TIMESTAMP,
  is_admin BOOLEAN,
  table_id INTEGER REFERENCES pool_tables(id) ON DELETE CASCADE
);