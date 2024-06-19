select * from employees;
select * from departments;

select department, count(*)
from employees
group by department;

select department
from employees e1
where 38 < (select count(*) from employees e2
				   where e1.department = e2.department)
				   group by department;
				   
select department, 
(select max(salary) from employees
where department = d.department)
from departments d
where 38 < (select count(*)
		   from employees e2
		   where d.department =  e2.department);
		   
		   
select department, first_name,salary,
case when salary = max_by_department then 'HIGHEST SALARY'
when salary = min_by_department then 'LOWEST SALARY'
end as salary_in_department
from(
select department,first_name,salary, 
 (select max(salary)from employees e2
 where e2.department = e1.department) max_by_department,
  (select min(salary)from employees e2
 where e2.department = e1.department) min_by_department
 from employees e1
 order by department) a
 where salary = max_by_department
 or salary = min_by_department
