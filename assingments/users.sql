-- Query: Create 3 new users
INSERT INTO users (first_name, last_name, email, created_at, updated_at)
VALUES
('John', 'Doe', 'john@example.com', NOW(), NOW()),
('Jane', 'Smith', 'jane@example.com', NOW(), NOW()),
('Alice', 'Johnson', 'alice@example.com', NOW(), NOW());

-- Query: Retrieve all the users
SELECT * FROM users;

-- Query: Retrieve the first user using their email address
SELECT * FROM users WHERE email = 'john@example.com' LIMIT 1;

-- Query: Retrieve the last user using their id
SELECT * FROM users ORDER BY id DESC LIMIT 1;

-- Query: Change the user with id=3 so their last name is Pancakes
UPDATE users SET last_name = 'Pancakes', updated_at = NOW() WHERE id = 3;

-- Query: Delete the user with id=2 from the database
DELETE FROM users WHERE id = 2;

-- Query: Get all the users, sorted by their first name
SELECT * FROM users ORDER BY first_name;

-- BONUS Query: Get all the users, sorted by their first name in descending order
SELECT * FROM users ORDER BY first_name DESC;
