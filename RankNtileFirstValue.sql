select first_name, email,department,salary,
rank() over(partition by department order by salary desc)
from employees;

select * from 
(select first_name, department, salary,
rank() over(partition by department order by salary desc)
from employees) e
where rank = 8;


select first_name, department, salary,
ntile(5) over(partition by department order by salary desc) salary_bracket
from employees;

select first_name, email, department, salary,
first_value(salary) over(partition by department order by salary desc) first_value
from employees;

select first_name,email, department, salary,
nth_value(salary,5) over(partition by department order by salary desc)
from employees;