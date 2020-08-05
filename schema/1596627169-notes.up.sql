CREATE TABLE IF NOT EXISTS notes (
    id SERIAL PRIMARY KEY,
    notebook_id INTEGER,
    title VARCHAR(32) NOT NULL,
    content VARCHAR,
    user_id INTEGER NOT NULL,
    created_at INTEGER NOT NULL,
    updated_at INTEGER NOT NULL,
    CONSTRAINT fk_notebook FOREIGN KEY(notebook_id) REFERENCES notebooks(id)
);
