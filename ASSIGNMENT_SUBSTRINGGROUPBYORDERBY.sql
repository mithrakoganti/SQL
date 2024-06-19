SELECT SUBSTRING(email, POSITION('@' IN email)+1) email_domain, COUNT(*)
FROM employees
WHERE email IS NOT NULL
GROUP BY email_domain
ORDER BY COUNT(*) DESC;

SELECT gender, region_id, MIN(salary) min_salary,
MAX(salary) max_salary, ROUND(AVG(salary)) avg_salary
FROM employees
GROUP BY gender, region_id
ORDER BY gender, region_id;