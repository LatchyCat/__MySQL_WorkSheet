-- Query to select all names from the database
SELECT * FROM names;

-- Query to insert your own name into the database
INSERT INTO names (name, created_at, updated_at) VALUES ('Your Name', NOW(), NOW());

-- Query to insert multiple names into the database in a single statement (NINJA BONUS)
INSERT INTO names (name, created_at, updated_at) VALUES
('Name 1', NOW(), NOW()),
('Name 2', NOW(), NOW()),
('Name 3', NOW(), NOW());

-- Optional: Try creating, updating, and deleting records using the statements you've learned about.
-- For example:

-- Query to update a record
UPDATE names SET name = 'New Name', updated_at = NOW() WHERE id = 1;

-- Query to delete a record
DELETE FROM names WHERE id = 2;
