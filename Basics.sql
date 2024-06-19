SELECT COUNT(DISTINCT amount) FROM payment;

SELECT * FROM customer
ORDER BY first_name DESC;

SELECT * FROM customer
ORDER BY store_id, first_name, last_name;

SELECT store_id, first_name, last_name FROM customer
ORDER BY store_id, first_name DESC, last_name ASC;

SELECT COUNT(*) FROM payment
WHERE amount NOT BETWEEN 8 AND 9;

SELECT customer_id FROM payment
WHERE amount != 0
ORDER BY payment_date 
LIMIT 10;

SELECT title, length FROM film
ORDER BY length
LIMIT 5;

SELECT COUNT(title) FROM film
WHERE length <= 50;

SELECT * FROM payment
WHERE payment_date BETWEEN '2007-02-01' AND '2007-02-15';

SELECT DISTINCT(amount) FROM payment
ORDER BY amount; 

SELECT COUNT(*) FROM payment
WHERE amount NOT IN (0.99, 1.98, 1.99);

SELECT * FROM customer
WHERE first_name IN ('John', 'Jared', 'Mithra');

SELECT * FROM customer
WHERE first_name LIKE 'J%' AND last_name LIKE 'S%';

SELECT * FROM customer
WHERE first_name ILIKE 'j%' AND last_name ILIKE 's%';

SELECT * FROM customer
WHERE first_name ILIKE '%ER%';

SELECT * FROM customer
WHERE first_name NOT ILIKE '%ER%';

SELECT * FROM customer
WHERE first_name LIKE 'A%' AND last_name NOT LIKE 'B%'
ORDER BY last_name;
