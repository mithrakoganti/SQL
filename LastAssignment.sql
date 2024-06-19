select * from students;
select * from student_enrollment;
select * from courses;
select * from professors;
select * from teach;


SELECT * FROM students

WHERE student_no NOT IN (

    SELECT student_no

    FROM student_enrollment

    WHERE course_no = 'CS180'

    );
	
	
select s.student_no,s.student_name,s.age
from students s, student_enrollment se
where s.student_no = se.student_no
group by s.student_no,s.student_name,s.age
having sum(case when se.course_no in('CS110','CS107')
		  then 1 else 0 end) = 1
		  
		  
SELECT s.*

FROM students s, student_enrollment se

WHERE s.student_no = se.student_no

AND s.student_no NOT IN ( SELECT student_no

                          FROM student_enrollment

                          WHERE course_no != 'CS220')
