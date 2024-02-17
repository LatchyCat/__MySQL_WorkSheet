-- Query: Create 3 new dojos
INSERT INTO dojos (name, created_at, updated_at) VALUES
('Dojo A', NOW(), NOW()),
('Dojo B', NOW(), NOW()),
('Dojo C', NOW(), NOW());

-- Query: Delete the 3 dojos you just created
DELETE FROM dojos WHERE id IN (LAST_INSERT_ID(), LAST_INSERT_ID() - 1, LAST_INSERT_ID() - 2);

-- Query: Create 3 more dojos
INSERT INTO dojos (name, created_at, updated_at) VALUES
('Dojo D', NOW(), NOW()),
('Dojo E', NOW(), NOW()),
('Dojo F', NOW(), NOW());

-- Query: Create 3 ninjas that belong to the first dojo
INSERT INTO ninjas (dojo_id, first_name, last_name, created_at, updated_at) VALUES
(LAST_INSERT_ID(), 'Ninja A1', 'Lastname', NOW(), NOW()),
(LAST_INSERT_ID(), 'Ninja A2', 'Lastname', NOW(), NOW()),
(LAST_INSERT_ID(), 'Ninja A3', 'Lastname', NOW(), NOW());

-- Query: Create 3 ninjas that belong to the second dojo
INSERT INTO ninjas (dojo_id, first_name, last_name, created_at, updated_at) VALUES
(LAST_INSERT_ID() - 1, 'Ninja B1', 'Lastname', NOW(), NOW()),
(LAST_INSERT_ID() - 1, 'Ninja B2', 'Lastname', NOW(), NOW()),
(LAST_INSERT_ID() - 1, 'Ninja B3', 'Lastname', NOW(), NOW());

-- Query: Create 3 ninjas that belong to the third dojo
INSERT INTO ninjas (dojo_id, first_name, last_name, created_at, updated_at) VALUES
(LAST_INSERT_ID() - 2, 'Ninja C1', 'Lastname', NOW(), NOW()),
(LAST_INSERT_ID() - 2, 'Ninja C2', 'Lastname', NOW(), NOW()),
(LAST_INSERT_ID() - 2, 'Ninja C3', 'Lastname', NOW(), NOW());

-- Query: Retrieve all the ninjas from the first dojo
SELECT * FROM ninjas WHERE dojo_id = (SELECT MIN(id) FROM dojos);

-- Query: Retrieve all the ninjas from the last dojo
SELECT * FROM ninjas WHERE dojo_id = (SELECT MAX(id) FROM dojos);

-- Query: Retrieve the last ninja's dojo
SELECT * FROM dojos WHERE id = (SELECT dojo_id FROM ninjas ORDER BY id DESC LIMIT 1);

-- Query: Use a JOIN to retrieve the ninja with id 6 as well as the data from its dojo.
SELECT ninjas.*, dojos.name AS dojo_name
FROM ninjas
JOIN dojos ON ninjas.dojo_id = dojos.id
WHERE ninjas.id = 6;

-- Query: Use a JOIN to retrieve all the ninjas as well as that ninja's dojo.
SELECT ninjas.*, dojos.name AS dojo_name
FROM ninjas
JOIN dojos ON ninjas.dojo_id = dojos.id;
