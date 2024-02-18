-- Query 1: Update first name for a specific user
UPDATE users SET first_name = 'NewFirstName' WHERE id = 1;

-- Query 2: Update last name for a specific user
UPDATE users SET last_name = 'NewLastName' WHERE id = 1;

-- Query 3: Update email for a specific user
UPDATE users SET email = 'newemail@example.com' WHERE id = 1;

-- Query 4: Update password for a specific user
UPDATE users SET password = 'newpassword' WHERE id = 1;

-- Query 5: Update creation date for a specific user
UPDATE users SET created_at = 'YYYY-MM-DD' WHERE id = 1;

-- Query 6: Update first name for users with a specific last name
UPDATE users SET first_name = 'NewFirstName' WHERE last_name = 'Smith';

-- Query 7: Update last name for users with a specific email domain
UPDATE users SET last_name = 'NewLastName' WHERE email LIKE '%@domain.com';

-- Query 8: Update email for users created between two specific dates
UPDATE users SET email = 'newemail@example.com' WHERE created_at BETWEEN 'YYYY-MM-DD' AND 'YYYY-MM-DD';

-- Query 9: Update password for users with IDs in a specific range
UPDATE users SET password = 'newpassword' WHERE id BETWEEN 100 AND 200;

-- Query 10: Update creation date for users older than a specific date
UPDATE users SET created_at = 'YYYY-MM-DD' WHERE created_at < 'YYYY-MM-DD';
