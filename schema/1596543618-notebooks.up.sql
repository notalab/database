CREATE TABLE IF NOT EXISTS notebooks (
    id SERIAL PRIMARY KEY,
    name VARCHAR(24) NOT NULL,
    color VARCHAR(6) NOT NULL,
    user_id INTEGER NOT NULL,
    created_at INTEGER NOT NULL,
    updated_at INTEGER NOT NULL
);
