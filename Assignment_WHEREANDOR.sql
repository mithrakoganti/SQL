SELECT * from EMPLOYEES;

SELECT first_name, email
FROM employees
WHERE department = 'Tools'
AND gender = 'F'
AND salary > 110000;

SELECT first_name, hire_date
FROM employees
WHERE salary > 165000
OR (department = 'Sports'
AND gender = 'M');

SELECT first_name, hire_date
FROM employees
WHERE hire_date BETWEEN '2002-01-01'
AND '2004-01-01';

SELECT * FROM employees
WHERE gender = 'M'
AND department = 'Automotive'
AND salary > 40000
AND salary < 100000 
OR (gender = 'F' and department = 'Toys');