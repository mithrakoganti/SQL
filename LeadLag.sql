select first_name,last_name,salary,
lead(salary) over() next_salary
from employees;

select first_name,last_name,salary,
lag(salary) over() previous_salary
from employees;

select department,last_name,salary,
lag(salary) over(order by salary desc) closest_higher_salary
from employees;

select department,last_name,salary,
lead(salary) over(partition by department order by salary desc) closest_lower_salary
from employees;

