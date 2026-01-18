-- Create categories table
CREATE TABLE IF NOT EXISTS schema_version_check (
    id BIGSERIAL PRIMARY KEY,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);