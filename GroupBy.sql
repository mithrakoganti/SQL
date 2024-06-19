CREATE TABLE cars(make varchar(10));
INSERT INTO cars VALUES('Honda');
INSERT INTO cars VALUES('Honda');
INSERT INTO cars VALUES('Honda');
INSERT INTO cars VALUES('Toyota');
INSERT INTO cars VALUES('Toyota');
INSERT INTO cars VALUES('Nissan');


SELECT make, COUNT(*) FROM cars
GROUP BY make;

SELECT * FROM employees;
SELECT department, COUNT(employee_id) 
FROM employees
GROUP BY department;

SELECT