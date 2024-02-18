-- Query 1: Retrieve all users
SELECT * FROM users;

-- Query 2: Retrieve users sorted by first name
SELECT * FROM users ORDER BY first_name;

-- Query 3: Retrieve users sorted by last name
SELECT * FROM users ORDER BY last_name;

-- Query 4: Retrieve users sorted by creation date
SELECT * FROM users ORDER BY created_at;

-- Query 5: Retrieve users older than a specific date
SELECT * FROM users WHERE created_at < 'YYYY-MM-DD';

-- Query 6: Retrieve users with a specific first name
SELECT * FROM users WHERE first_name = 'John';

-- Query 7: Retrieve users with a specific email domain
SELECT * FROM users WHERE email LIKE '%@domain.com';

-- Query 8: Retrieve users with passwords starting with a specific letter
SELECT * FROM users WHERE password LIKE 'A%';

-- Query 9: Retrieve users created between two specific dates
SELECT * FROM users WHERE created_at BETWEEN 'YYYY-MM-DD' AND 'YYYY-MM-DD';

-- Query 10: Retrieve users with IDs in a specific range
SELECT * FROM users WHERE id BETWEEN 100 AND 200;
