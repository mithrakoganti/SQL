select category, count(category) 
from(select first_name, salary,
case
	when salary < 100000 then 'Under Paid'
	when salary > 100000 and salary < 160000 then 'Paid Well'
	when salary > 160000 then 'Executive'
	else 'Unpaid'
end as category
from employees
order by salary desc) a
group by category
order by count(category) desc;


select sum(case when salary < 100000 then 1 else 0 end) as under_paid,
sum(case when salary > 100000 and salary < 150000 then 1 else 0 end) as paid_well,
sum(case when salary > 150000 then 1 else 0 end) as executive
from employees;

select department, count(*)
from employees 
where department IN('Sports', 'Tools', 'Clothing', 'Computers')
group by department;


select sum(case when department = 'Sports' then 1 else 0 end) Sports_Employees,
sum(case when department = 'Tools' then 1 else 0 end) Tools_Employees,
sum(case when department = 'Clothing' then 1 else 0 end) Clothing_Employees,
sum(case when department = 'Computers' then 1 else 0 end) Computers_Employees
from employees;


select * from regions;

select first_name, 
case when region_id = 1 then (select country from regions where region_id = 1)end region_1,
case when region_id = 2 then (select country from regions where region_id = 2)end region_2,
case when region_id = 3 then (select country from regions where region_id = 3)end region_3,
case when region_id = 4 then (select country from regions where region_id = 4)end region_4,
case when region_id = 5 then (select country from regions where region_id = 5)end region_5,
case when region_id = 6 then (select country from regions where region_id = 6)end region_6,
case when region_id = 7 then (select country from regions where region_id = 7)end region_7
from employees;

select count(a.region_1)+count(a.region_2)+count(a.region_3) as United_states,
count(a.region_4)+count(a.region_5) as Asia,
count(a.region_6)+count(a.region_7) as Canada
from (select first_name,  
case when region_id = 1 then (select country from regions where region_id = 1)end region_1,
case when region_id = 2 then (select country from regions where region_id = 2)end region_2,
case when region_id = 3 then (select country from regions where region_id = 3)end region_3,
case when region_id = 4 then (select country from regions where region_id = 4)end region_4,
case when region_id = 5 then (select country from regions where region_id = 5)end region_5,
case when region_id = 6 then (select country from regions where region_id = 6)end region_6,
case when region_id = 7 then (select country from regions where region_id = 7)end region_7
from employees) a;



