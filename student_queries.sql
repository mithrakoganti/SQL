USE sql_practice;

CREATE TABLE school(school_id int, school_name varchar(30), city varchar(30));

INSERT INTO school VALUES(1, 'Stanford', 'Stanford'),
(2, 'University of Cali', 'San Francisco'),
(3, 'Harvard University', 'New York'),
(4, 'MIT', 'Boston'),
(5, 'Yale', 'New Haven');
SELECT * FROM SCHOOL;

CREATE TABLE student(student_id int, student_name varchar(30), city varchar(30), school_id int);

INSERT INTO student VALUES
(1001, 'Peter Brebec', 'New York', 1),
(1002, 'John Goorgy', 'San Francisco', 2),
(1003, 'Brad smith', 'New York', 3),
(1004, 'Fabian Johns', 'Boston', 5),
(1005, 'Brad Cameron', 'Stanford', 1),
(1006, 'Geoff Firby', 'Boston', 5),
(1007, 'Johnny blue', 'New Haven', 2),
(1008, 'Johse Brook', 'Miami', 2);

SELECT sc.school_name, st.student_name from school sc, student st
where sc.city = st.city
and st.city != 'New York' ;






