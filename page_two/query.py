'''
Page two

users table:
columns: id, first_name, _last_name, handle, age, created_at, updated_at
'''


#Sakila SQL query assignment:
-- 5. Get all the films with a "rating = G" and "special feature = behind the scenes", joined by actor_id = 15
SELECT film.title, film.description, film.release_year, film.rating, film.special_features
FROM film
JOIN film_actor ON film.film_id = film_actor.film_id
WHERE film.rating = 'G' AND film.special_features LIKE '%behind the scenes%' AND film_actor.actor_id = 15;

-- 6. Get all the actors that joined in the film_id = 369
SELECT film_actor.film_id, film.title, actor.actor_id, CONCAT(actor.first_name, ' ', actor.last_name) AS actor_name
FROM film_actor
JOIN actor ON film_actor.actor_id = actor.actor_id
JOIN film ON film_actor.film_id = film.film_id
WHERE film_actor.film_id = 369;

-- 7. Get all drama films with a rental rate of 2.99
SELECT film.title, film.description, film.release_year, film.rating, film.special_features, category.name AS genre
FROM film
JOIN film_category ON film.film_id = film_category.film_id
JOIN category ON film_category.category_id = category.category_id
WHERE category.name = 'Drama' AND film.rental_rate = 2.99;

-- 8. Get all the action films which are joined by SANDRA KILMER
SELECT film.title, film.description, film.release_year, film.rating, film.special_features, category.name AS genre, actor.first_name, actor.last_name
FROM film
JOIN film_actor ON film.film_id = film_actor.film_id
JOIN actor ON film_actor.actor_id = actor.actor_id
JOIN film_category ON film.film_id = film_category.film_id
JOIN category ON film_category.category_id = category.category_id
WHERE category.name = 'Action' AND (actor.first_name = 'SANDRA' AND actor.last_name = 'KILMER');


#Lead Gen Business:
-- 1. Get the total revenue for March of 2012
SELECT SUM(revenue) AS total_revenue
FROM revenue_table
WHERE MONTH(date) = 3 AND YEAR(date) = 2012;

-- 2. Get total revenue collected from the client with an id of 2
SELECT SUM(revenue) AS total_revenue
FROM revenue_table
WHERE client_id = 2;

-- 3. Get all the sites that client=10 owns
SELECT site_name
FROM sites_table
WHERE client_id = 10;

-- 4. Get total # of sites created per month per year for the client with an id of 1
SELECT COUNT(site_id) AS total_sites, MONTH(date) AS month, YEAR(date) AS year
FROM sites_table
WHERE client_id = 1
GROUP BY YEAR(date), MONTH(date);

-- 5. Get the total # of leads generated for each of the sites between January 1, 2011 to February 15, 2011
SELECT site_id, COUNT(lead_id) AS total_leads
FROM leads_table
WHERE lead_date BETWEEN '2011-01-01' AND '2011-02-15'
GROUP BY site_id;

-- 6. Get a list of client names and the total # of leads we've generated for each of our clients between January 1, 2011 to December 31, 2011
SELECT clients_table.client_name, COUNT(leads_table.lead_id) AS total_leads
FROM clients_table
JOIN sites_table ON clients_table.client_id = sites_table.client_id
JOIN leads_table ON sites_table.site_id = leads_table.site_id
WHERE leads_table.lead_date BETWEEN '2011-01-01' AND '2011-12-31'
GROUP BY clients_table.client_name;

-- 7. Get a list of client names and the total # of leads we've generated for each client each month between months 1 - 6 of Year 2011
SELECT clients_table.client_name, MONTH(leads_table.lead_date) AS month, COUNT(leads_table.lead_id) AS total_leads
FROM clients_table
JOIN sites_table ON clients_table.client_id = sites_table.client_id
JOIN leads_table ON sites_table.site_id = leads_table.site_id
WHERE YEAR(leads_table.lead_date) = 2011 AND MONTH(leads_table.lead_date) BETWEEN 1 AND 6
GROUP BY clients_table.client_name, MONTH(leads_table.lead_date);

-- 8. Get a list of client names and the total # of leads we've generated for each of our clients' sites between January 1, 2011 to December 31, 2011
SELECT clients_table.client_name, sites_table.site_name, COUNT(leads_table.lead_id) AS total_leads
FROM clients_table
JOIN sites_table ON clients_table.client_id = sites_table.client_id
JOIN leads_table ON sites_table.site_id = leads_table.site_id
WHERE leads_table.lead_date BETWEEN '2011-01-01' AND '2011-12-31'
GROUP BY clients_table.client_name, sites_table.site_name
ORDER BY clients_table.client_id;

-- 9. Retrieve total revenue collected from each client for each month of the year. Order it by client id.
SELECT client_id, MONTH(date) AS month, SUM(revenue) AS total_revenue
FROM revenue_table
GROUP BY client_id, MONTH(date)
ORDER BY client_id;

-- 10. Retrieve all the sites that each client owns. Group the results so that each row shows a new client with a field called 'sites' that has all the sites that the client owns.
SELECT client_id, client_name, GROUP_CONCAT(site_name) AS sites
FROM clients_table
JOIN sites_table ON clients_table.client_id = sites_table.client_id
GROUP BY client_id;
