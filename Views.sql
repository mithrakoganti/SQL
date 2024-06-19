select * from employees;
select * from departments;
select * from regions;

create view v_employee_information as
select first_name, email, e.department, salary, division,
region, country
from employees e, departments d, regions r
where e.department = d.department
and e. region_id =r.region_id;


select * from v_employee_information;


select * from
(select * from departments) a