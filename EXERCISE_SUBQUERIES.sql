SELECT * FROM employees;

SELECT * FROM departments;

SELECT * FROM regions;

SELECT * FROM employees
WHERE department
IN (SELECT department FROM departments WHERE division = 'Electronics');

SELECT * FROM employees
WHERE region_id in (SELECT region_id FROM regions WHERE 
					country IN('Asia', 'Canada'))
AND salary > 130000;


SELECT first_name, department, 
(SELECT MAX(salary) FROM employees) - salary AS diff_salary
FROM employees 
WHERE region_id IN (SELECT region_id FROM regions  WHERE 
					country IN('Asia', 'Canada'));


SELECT * FROM employees
WHERE region_id in (SELECT region_id FROM regions WHERE 
					country = 'United States');
					
SELECT * FROM employees
WHERE region_id > ALL (SELECT region_id FROM regions WHERE 
					country = 'United States');
					
					
SELECT * FROM employees	
WHERE department IN (SELECT department FROM departments 
					WHERE division = 'Kids')
AND hire_date > ALL (SELECT hire_date FROM employees
					WHERE department = 'Maintenance');