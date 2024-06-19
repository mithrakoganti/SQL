select first_name, department,
(select count(*) from employees e1
 where e1.department = e2.department)
from employees e2
group by department, first_name
order by department;


select first_name, department,
count(*) over(partition by department)
from employees e;

select first_name, department,
sum(salary) over(partition by department)
from employees e;

select first_name, department,
count(*) over(partition by department) dept_count,
region_id,
count(*) over(partition by region_id) region_count
from employees e;

select first_name, department, count(*)
over(partition by department)
from employees
where region_id = 3;

select first_name,hire_date,salary,
sum(salary) over(order by hire_date range between unbounded preceding
				and current row) as running_total_of_salaries
from employees;