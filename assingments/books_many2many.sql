-- Insert statement for Jane Amsden
INSERT INTO users (first_name, last_name, email, password, created_at, updated_at)
VALUES ('Jane', 'Amsden', 'jane@example.com', 'jane123', NOW(), NOW());

-- Insert statement for Emily Dixon
INSERT INTO users (first_name, last_name, email, password, created_at, updated_at)
VALUES ('Emily', 'Dixon', 'emily@example.com', 'emily456', NOW(), NOW());

-- Insert statement for Theodore Dostoevsky
INSERT INTO users (first_name, last_name, email, password, created_at, updated_at)
VALUES ('Theodore', 'Dostoevsky', 'theodore@example.com', 'theodore789', NOW(), NOW());

-- Insert statement for William Shapiro
INSERT INTO users (first_name, last_name, email, password, created_at, updated_at)
VALUES ('William', 'Shapiro', 'william@example.com', 'william123', NOW(), NOW());

-- Insert statement for Lao Xiu
INSERT INTO users (first_name, last_name, email, password, created_at, updated_at)
VALUES ('Lao', 'Xiu', 'lao@example.com', 'lao456', NOW(), NOW());




-- Create 5 books with the following names: C Sharp, Java, Python, PHP, Ruby
INSERT INTO books (title, created_at, updated_at)
VALUES ('C Sharp', NOW(), NOW()),
       ('Java', NOW(), NOW()),
       ('Python', NOW(), NOW()),
       ('PHP', NOW(), NOW()),
       ('Ruby', NOW(), NOW());

-- Change the name of the C Sharp book to C#
UPDATE books
SET title = 'C#'
WHERE title = 'C Sharp';

-- Change the first name of the 4th user to Bill
UPDATE users
SET first_name = 'Bill'
WHERE id = 4;

-- Have the first user favorite the first 2 books
INSERT INTO favorites (user_id, book_id)
VALUES (1, 1), (1, 2);

-- Have the second user favorite the first 3 books
INSERT INTO favorites (user_id, book_id)
VALUES (2, 1), (2, 2), (2, 3);

-- Have the third user favorite the first 4 books
INSERT INTO favorites (user_id, book_id)
VALUES (3, 1), (3, 2), (3, 3), (3, 4);

-- Have the fourth user favorite all the books
INSERT INTO favorites (user_id, book_id)
VALUES (4, 1), (4, 2), (4, 3), (4, 4), (4, 5);

-- Retrieve all the users who favorited the 3rd book
SELECT u.*
FROM users u
