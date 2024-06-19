SELECT * FROM employees;

SELECT first_name, COUNT(*)
FROM employees
GROUP BY first_name
HAVING COUNT(*) > 2
ORDER BY first_name;

SELECT department
FROM employees
GROUP BY department
HAVING COUNT(*) > 1
ORDER BY department;

SELECT SUBSTRING(email, POSITION('@' IN email)+ 1) domain_name, COUNT(*)
FROM employees
WHERE email IS NOT NULL
GROUP BY domain_name
ORDER BY COUNT(*) DESC;

SELECT gender, region_id, min(salary), max(salary),ROUND(avg(salary))
FROM employees
GROUP BY gender, region_id
ORDER BY gender, region_id;
