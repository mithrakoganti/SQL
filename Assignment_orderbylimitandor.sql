select * from students;

select student_name
from students
where age between 18 and 20;

select * from students
where student_name like '%ch%'
or student_name like '%nd"';

select student_name, age from students
where (student_name like '%ae%'
or student_name like '%ph%')
and age != 19;

select student_name from students
order by age desc;

select student_name, age
from students
order by age desc
limit 4;

select * from students
where (age <=20 and ((student_no between 3 and 5)
	   or student_no = 7))
or (age  > 20 and student_no >=4)

