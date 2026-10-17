CREATE TABLE IF NOT EXISTS tasks (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    status VARCHAR(50) DEFAULT 'pending',
    assigned_to VARCHAR(100),
    version INT DEFAULT 1,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO tasks (title, description, status, assigned_to)
VALUES 
('System Setup', 'Initialize PostgreSQL and Node.js backend', 'in-progress', 'Roshan'),
('Concurrency Check', 'Verify optimistic locking version control', 'pending', 'Dev Team');