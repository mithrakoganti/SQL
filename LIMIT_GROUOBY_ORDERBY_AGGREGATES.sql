SELECT * FROM students;

SELECT student_name FROM students
WHERE age BETWEEN 18 AND 20;

SELECT * FROM students
WHERE student_name LIKE '%ch%' 
OR student_name LIKE '%nd';

SELECT student_name FROM students
WHERE (student_name LIKE '%ae%'
OR student_name LIKE '%ph%')
AND age != 19;

SELECT student_name
FROM students
WHERE (student_name like '%ae%' OR student_name like '%ph%')
AND age != 19;

SELECT student_name FROM students
ORDER BY age DESC;

SELECT student_name, age FROM students
ORDER BY age DESC
LIMIT 4;

-- Write a query that returns students based on the following criteria:
--The student must not be older than age 20 if their student_no is either between
--3 and 5 or their student_no is 7. Your query should also return students older 
--than age 20 but in that case they must have a student_no that is at least 4.

SELECT * FROM students
WHERE age <= 20
AND (student_no BETWEEN 3 AND 5 OR student_no = 7)
OR(age > 20 AND student_no >= 4);

SELECT UPPER(first_name), LOWER(department)
FROM employees;

SELECT LENGTH(student_name)
FROM students;

SELECT TRIM('ABHIRAM         KRISHNA);

SELECT LENGTH(TRIM('ABHIRAM         KRISHNA'));

SELECT SUBSTRING('This is test data' FROM 1 for 4)
test_data_extracted;
			
SELECT department, REPLACE(department, 'Clothing', 'Attire') modified_data
FROM departments;
			
			
SELECT department, 
REPLACE(department, 'Clothing', 'Attire') modified_data,
department || ' '||'department' department_name
FROM departments;
			
SELECT POSITION('@' IN email)
FROM employees;

SELECT SUBSTRING(email, POSITION('@' IN email)+1) formatted_text
FROM employees;
			
SELECT COALESCE(email, 'None') AS email
FROM employees;  
			
SELECT max(salary) FROM employees;
			
SELECT MIN(salary) FROM employees;
						
SELECT AVG(salary) FROM employees;

SELECT SUM(salary) FROM employees;
			
SELECT COUNT(employee_id) FROM employees;
SELECT COUNT(email) FROM employees;
SELECT department, COUNT(*)
FROM employees
GROUP BY department;
			

SELECT department, gender, COUNT(*)
FROM employees
GROUP BY department, gender
ORDER BY department;
			

SELECT department,COUNT(*)
FROM employees
GROUP BY department
ORDER BY department;