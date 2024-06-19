select distinct employees.department employees_department
from employees left join departments on
employees.department = departments.department
where departments.department is null;

select distinct employees.department employees_department,
departments.department as departments_department
from employees full outer join departments on
employees.department = departments.department;


select distinct department
from employees
union
select department
from departments;

select distinct department
from employees
union all
select department
from departments;

select distinct department
from employees
except
select department
from departments;

select department, count(*)
from employees
group by department
union all
(select 'TOTAL', count(*) from employees);



