SELECT first_name, last_name, * FROM employees;

SELECT employees.department
FROM employees, departments;

SELECT e.department
FROM employees e, departments d;

SELECT * FROM employees
WHERE department NOT IN(SELECT department FROM departments);

SELECT * FROM
(SELECT * FROM employees WHERE salary > 150000) A

SELECT a.employee_name, a.yearly_salary FROM 
(SELECT first_name employee_name, salary yearly_salary
 FROM employees WHERE salary> 150000) a,
 (SELECT department employee_name FROM departments) b