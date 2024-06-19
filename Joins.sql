SELECT * FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id;

SELECT payment_id, payment.customer_id, first_name, last_name 
FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id;

SELECT * FROM customer
FULL OUTER JOIN payment
ON customer.customer_id = payment.customer_id
WHERE customer.customer_id IS NULL OR
payment.payment_id IS NULL;

SELECT COUNT(DISTINCT customer_id) FROM customer;

SELECT * FROM payment
FULL OUTER JOIN customer
ON payment.customer_id = customer.customer_id;

SELECT film_id, title FROM film
WHERE film_id IN
(SELECT inventory.film_id
FROM rental
INNER JOIN inventory
ON inventory.inventory_id = rental.inventory_id
WHERE return_date BETWEEN '2005-05-29' AND '2005-05-30');

SELECT * FROM payment
LEFT OUTER JOIN customer
ON payment.customer_id = customer.customer_id
WHERE payment.payment_id IS NULL;

SELECT * FROM film;

SELECT * FROM inventory;

SELECT film.film_id, film.title, inventory_id FROM film
LEFT OUTER JOIN inventory
ON film.film_id = inventory.film_id
WHERE inventory.film_id IS NULL;

SELECT district, email FROM address
JOIN customer
ON address.address_id = customer.address_id
WHERE district = 'California';

SELECT first_name, last_name, title FROM actor
JOIN film_actor
ON actor.actor_id = film_actor.actor_id
JOIN film
ON film.film_id = film_actor.film_id
WHERE first_name = 'Nick' AND last_name = 'Wahlberg';
