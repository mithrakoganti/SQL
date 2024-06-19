select * from employees;
select * from regions;
select * from departments;

select first_name, email,employees.department, division, country
from employees, departments, regions
where employees.department = departments.department
and employees.region_id = regions.region_id
and email is not null;


select first_name, email,e.department, division, country
from employees e, departments d, regions r
where e.department = d.department
and e.region_id = r.region_id
and email is not null;


select country, count(employee_id) 
from employees e, regions r
where e.region_id = r.region_id
group by country;
