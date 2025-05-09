CREATE TABLE IF NOT EXISTS users(
    id INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    email VARCHAR(255) UNIQUE NOT NULL,
    pass_hash BYTEA NOT NULL
);

CREATE INDEX IF NOT EXISTS idx_users_email ON users (email);