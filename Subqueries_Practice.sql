create table dupes(id integer, name varchar(10));

insert into dupes values(1,'Frank');
insert into dupes values(2,'Frank');
insert into dupes values(3,'Robert');
insert into dupes values(4,'Robert');
insert into dupes values(5,'Sam');
insert into dupes values(6,'Frank');
insert into dupes values(7,'Peter');

select * from dupes;

select  min(id), name 
from dupes
group by name
order by name;


delete from dupes
where id not in(
select min(id)
from dupes
group by name )

drop table dupes;


select * from students;
select * from student_enrollment;
select * from courses;

select student_name from students
where student_no in 
(select student_no from student_enrollment
 where course_no in (select course_no from courses
					where course_title in ('Physics', 'US History')));
					
select student_name from students
where student_no in (select student_no from 
					 (select student_no, COUNT(course_no) course_count
					  from student_enrollment group by student_no
					  order by course_count desc limit 1) a);
					  
					  
	select student_name from students
	where age = (select max(age) from students) ;