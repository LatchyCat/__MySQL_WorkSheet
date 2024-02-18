-- Query 1: Create a new user with specific details
INSERT INTO users (first_name, last_name, email, password, created_at, updated_at)
VALUES ('John', 'Doe', 'john@example.com', 'password123', NOW(), NOW());

-- Query 2: Create a new user with different details
INSERT INTO users (first_name, last_name, email, password, created_at, updated_at)
VALUES ('Jane', 'Smith', 'jane@example.com', 'password456', NOW(), NOW());

-- Query 3: Create another new user
INSERT INTO users (first_name, last_name, email, password, created_at, updated_at)
VALUES ('Alice', 'Johnson', 'alice@example.com', 'password789', NOW(), NOW());

-- Query 4: Create a user with a different email
INSERT INTO users (first_name, last_name, email, password, created_at, updated_at)
VALUES ('Bob', 'Williams', 'bob@example.com', 'password123', NOW(), NOW());

-- Query 5: Create a user with a different password
INSERT INTO users (first_name, last_name, email, password, created_at, updated_at)
VALUES ('Emily', 'Brown', 'emily@example.com', 'newpassword', NOW(), NOW());

-- Query 6: Create a user with a specific creation date
INSERT INTO users (first_name, last_name, email, password, created_at, updated_at)
VALUES ('Michael', 'Jones', 'michael@example.com', 'password123', '2023-01-15', NOW());

-- Query 7: Create a user with a specific update date
INSERT INTO users (first_name, last_name, email, password, created_at, updated_at)
VALUES ('Sarah', 'Davis', 'sarah@example.com', 'password456', NOW(), '2023-02-20');

-- Query 8: Create a user with NULL password
INSERT INTO users (first_name, last_name, email, created_at, updated_at)
VALUES ('David', 'Martinez', 'david@example.com', NULL, NOW());

-- Query 9: Create a user with NULL email
INSERT INTO users (first_name, last_name, password, created_at, updated_at)
VALUES ('Jessica', 'Wilson', 'password789', NOW(), NOW());

-- Query 10: Create a user with NULL first and last names
INSERT INTO users (email, password, created_at, updated_at)
VALUES ('test@example.com', 'testpassword', NOW(), NOW()),

-- Query 11: Another new user with specific details
('Alice', 'Smith', 'alice.smith@example.com', 'password123', NOW(), NOW()),

-- Query 12: Create a user with different details
('John', 'Brown', 'john.brown@example.com', 'password456', NOW(), NOW()),

-- Query 13: Create another new user
('Mary', 'Johnson', 'mary.johnson@example.com', 'password789', NOW(), NOW()),

-- Query 14: Create a user with a different email
('Ella', 'Davis', 'ella.davis@example.com', 'password123', NOW(), NOW()),

-- Query 15: Create a user with a different password
('James', 'Wilson', 'james.wilson@example.com', 'newpassword', NOW(), NOW()),

-- Query 16: Create a user with a specific creation date
('Sophia', 'Martinez', 'sophia.martinez@example.com', 'password123', '2023-01-15', NOW()),

-- Query 17: Create a user with a specific update date
('Olivia', 'Brown', 'olivia.brown@example.com', 'password456', NOW(), '2023-02-20'),

-- Query 18: Create a user with NULL password
('Noah', 'Johnson', 'noah.johnson@example.com', NULL, NOW(), NOW()),

-- Query 19: Create a user with NULL email
('William', 'Davis', 'password789', NOW(), NOW()),

-- Query 20: Create a user with NULL first and last names
(NULL, NULL, 'test2@example.com', 'testpassword2', NOW(), NOW());
