select * from students;
select * from courses;
select * from professors;
select * from teach;
select * from student_enrollment;

select student_name, course_no,min(last_name)
from
(select s.student_name,se.course_no,t.last_name
from students s inner join student_enrollment se
on s.student_no = se.student_no
inner join teach t on
se.course_no = t.course_no)a 
group by student_name, course_no
order by student_name, course_no;


select * from employees;
select * from departments;

select first_name, department
from employees e1
where salary > (select avg(salary) from employees e2
			   where department = e1.department);
			   

select s.student_no,s.student_name,se.course_no
from students s
left join student_enrollment se
on s.student_no = se.student_no;



