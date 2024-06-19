SELECT department, REPLACE(department,'Clothing', 'Attire') modified_data
FROM departments;


SELECT last_name||' '||'works in the'||' '||department||' '||'department'
FROM professors;

SELECT 'It is '||(salary > 95000)||' that professor '||last_name||' is highly paid'
FROM professors;

SELECT last_name, UPPER(SUBSTRING(department,1,3)), salary, hire_date 
FROM professors


SELECT MAX(salary) highest_salary, 
MIN(salary) lowest_salary
FROM professors
WHERE NOT last_name = 'Wilson';

SELECT MIN(hire_date)
FROM professors;