select * from employees;
select * from departments;
select * from regions;



(select e.first_name, e.department, e.hire_date, r.country
from employees e
inner join regions r
on e.region_id = r.region_id
where hire_date = (select min(hire_date) from employees e2)
limit 1)
union
select e.first_name, e.department, e.hire_date, r.country
from employees e
join regions r
on e.region_id = r.region_id
where hire_date = (select max(hire_date) from employees e2)
order by hire_date;

select first_name, hire_date, hire_date-90
from employees;

select hire_date, salary,
(select sum(salary) from employees e2
where e2.hire_date between e.hire_date - 90 and e.hire_date) as speeding_pattern
from employees e
order by hire_date;