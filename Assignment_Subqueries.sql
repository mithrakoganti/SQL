select * from employees
where department in
(select department from departments where division = 'Electronics');


select * from employees;

select * from departments;

select * from regions;


select * from employees
where (salary > 130000) and (region_id in (
select region_id from regions
where country = 'Asia' or country = 'Canada'));

select first_name, department, 
(select max(salary) from employees) - salary as diff_salary
from employees
where region_id in (select region_id from regions
where country = 'Asia' or country = 'Canada');


select * from employees
where department in
(select department from departments where division = 'Kids')
and hire_date > all(select hire_date from employees where department = 'Maintenance')


select salary, count(*) from employees
group by salary 
order by count(*) desc, salary desc;


select salary
from employees
group by salary
having count(*) >= all(select count(*) from employees
					  group by salary)
order by salary desc
limit 1;