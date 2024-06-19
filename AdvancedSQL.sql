SHOW ALL;

SELECT NOW();

SHOW TIMEZONE;

SELECT TIMEOFDAY();

SELECT CURRENT_TIME;

SELECT CURRENT_DATE;

SELECT EXTRACT(YEAR FROM payment_date)
FROM payment;

SELECT AGE(payment_date)
FROM payment;

SELECT TO_CHAR(payment_date, 'MONTH YYYY')
FROM payment;

SELECT DISTINCT TO_CHAR(payment_date, 'MONTH')
FROM payment;

SELECT COUNT(*) FROM payment
WHERE EXTRACT(dow FROM payment_date) = 1;

SELECT ROUND(rental_rate/replacement_cost, 4)*100 AS PERCENT_COST FROM film;

SELECT LENGTH(first_name) FROM actor;

SELECT upper(first_name) || ' ' || upper(last_name) AS full_name
FROM actor;

SELECT LOWER(LEFT(first_name, 1)) || LOWER(last_name) || '@gmail.com' AS email_id
FROM actor;


SELECT first_name, last_name
FROM customer AS c
WHERE EXISTS
(SELECT * FROM payment AS p
WHERE p.customer_id = c.customer_id
AND amount > 11);

