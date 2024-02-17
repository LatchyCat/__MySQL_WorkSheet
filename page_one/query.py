'''
Page one

users table:
columns: id, first_name, _last_name, handle, age, created_at, updated_at
'''

#Basic 4 Queries:
-- 1. Get all users whose age is greater than 35
SELECT * FROM users WHERE age > 35;

-- 2. Insert a new user whose first name is ‘Jonathan’ and last name is ‘Smith’
INSERT INTO users (first_name, last_name, created_at) VALUES ('Jonathan', 'Smith', NOW());

-- 3. Delete all users whose user records were created after August 1st 2010
DELETE FROM users WHERE created_at > '2010-08-01';

-- 4. Update user record (id: 3) so that first_name is ‘Coding’ and last name ‘Dojo’. Also update it so that the age is set as 7.
-- Have updated_at automatically update to the current time.
UPDATE users SET first_name = 'Coding', last_name = 'Dojo', age = 7, updated_at = NOW() WHERE id = 3;


#MySQL Countries:
-- 1. Get all the countries that speak Slovene, ordered by language percentage in descending order
SELECT country.Name AS country, countrylanguage.Language, countrylanguage.Percentage
FROM country
JOIN countrylanguage ON country.Code = countrylanguage.CountryCode
WHERE countrylanguage.Language = 'Slovene'
ORDER BY countrylanguage.Percentage DESC;

-- 2. Display the total number of cities for each country, ordered by the number of cities in descending order
SELECT country.Name AS country, COUNT(city.ID) AS total_cities
FROM country
JOIN city ON country.Code = city.CountryCode
GROUP BY country.Code
ORDER BY total_cities DESC;

-- 3. Get all cities in Mexico with a population of greater than 500,000, ordered by population in descending order
SELECT city.Name AS city, country.Name AS country, city.Population
FROM city
JOIN country ON city.CountryCode = country.Code
WHERE country.Name = 'Mexico' AND city.Population > 500000
ORDER BY city.Population DESC;

-- 4. Get all languages in each country with a percentage greater than 89%, ordered by percentage in descending order
SELECT country.Name AS country, countrylanguage.Language, countrylanguage.Percentage
FROM country
JOIN countrylanguage ON country.Code = countrylanguage.CountryCode
WHERE countrylanguage.Percentage > 89
ORDER BY countrylanguage.Percentage DESC;

-- 5. Get all the countries with Surface Area below 501 and Population greater than 100,000
SELECT Name AS country, SurfaceArea, Population
FROM country
WHERE SurfaceArea < 501 AND Population > 100000;

-- 6. Get countries with only Constitutional Monarchy with a capital greater than 200 and a life expectancy greater than 75 years
SELECT Name AS country, GovernmentForm, Capital, LifeExpectancy
FROM country
WHERE GovernmentForm = 'Constitutional Monarchy' AND Capital > 200 AND LifeExpectancy > 75;

-- 7. Get all the cities of Argentina inside the Buenos Aires district with population greater than 500,000
SELECT country.Name AS country, city.Name AS city, city.District, city.Population
FROM city
JOIN country ON city.CountryCode = country.Code
WHERE country.Name = 'Argentina' AND city.District = 'Buenos Aires' AND city.Population > 500000;

-- 8. Summarize the number of countries in each region, ordered by the number of countries in descending order
SELECT region.Region AS region, COUNT(country.Code) AS num_countries
FROM country
JOIN region ON country.Region = region.Code
GROUP BY region.Region
ORDER BY num_countries DESC;


#Sakila SQL query assignment:
-- 1. Get all the customers inside city_id = 312
SELECT customer.first_name, customer.last_name, customer.email, address.address
FROM customer
JOIN address ON customer.address_id = address.address_id
WHERE address.city_id = 312;

-- 2. Get all comedy films
SELECT film.title, film.description, film.release_year, film.rating, film.special_features, category.name AS genre
FROM film
JOIN film_category ON film.film_id = film_category.film_id
JOIN category ON film_category.category_id = category.category_id
WHERE category.name = 'Comedy';

-- 3. Get all the films joined by actor_id=5
SELECT actor.actor_id, actor.first_name, actor.last_name, film.title, film.description, film.release_year
FROM film_actor
JOIN actor ON film_actor.actor_id = actor.actor_id
JOIN film ON film_actor.film_id = film.film_id
WHERE actor.actor_id = 5;
