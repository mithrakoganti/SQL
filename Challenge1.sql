SELECT COUNT(*) FROM payment
WHERE amount > 5.00;

SELECT COUNT(*) FROM actor
WHERE first_name LIKE 'P%';

SELECT DISTINCT(district) FROM address;

SELECT COUNT(*) FROM film
WHERE rating = 'R' AND replacement_cost BETWEEN 5.00 AND 15.00;

SELECT COUNT(*) FROM film
WHERE title ILIKE '%truman%';

SELECT * FROM payment;

SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id
ORDER BY SUM(amount);

SELECT customer_id,staff_id, SUM(amount) FROM payment
GROUP BY customer_id, staff_id
ORDER BY customer_id;

SELECT DATE(payment_date), SUM(amount) FROM payment
GROUP BY DATE(payment_date)
ORDER BY SUM(amount) DESC;

SELECT * FROM payment;

SELECT staff_id, COUNT(amount) FROM payment
GROUP BY staff_id
ORDER BY COUNT(amount) DESC;

SELECT rating, AVG(replacement_cost) FROM film
GROUP BY rating
ORDER BY AVG(replacement_cost) DESC ;

SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5;

SELECT customer_id, COUNT(amount) FROM payment
GROUP BY customer_id
HAVING COUNT(amount) >= 40;

SELECT customer_id, SUM(amount) FROM payment
WHERE staff_id = 2 
GROUP BY customer_id
HAVING SUM(amount) > 100;


SELECT customer_id, SUM(amount) FROM payment
WHERE staff_id = 2
GROUP BY customer_id
HAVING SUM(amount) >= 110;

SELECT COUNT(title) FROM film
WHERE title LIKE 'J%';

SELECT first_name, last_name FROM customer
WHERE first_name LIKE 'E%' AND address_id < 500
ORDER BY customer_id DESC
LIMIT 1;
