SELECT * FROM professors;
SELECT last_name ||' works in the '||department||' departmentAA' AS work_place
FROM professors;

SELECT 'It is '|| (salary > 95000) || ' that professor '||last_name ||' is highly paid'
FROM professors;

SELECT SUBSTRING(UPPER(department), 1,3) FROM professors;

SELECT MAX(salary), MIN(salary)
FROM professors
WHERE last_name != 'Wilson';

SELECT MIN(hire_date) FROM professors;