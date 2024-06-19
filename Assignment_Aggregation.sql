
CREATE TABLE fruit_imports
(
	id integer,
	name varchar(20),
	season varchar(10),
	state varchar(20),
	supply integer,
	cost_per_unit decimal
);

insert into fruit_imports values(1, 'Apple', 'All Year', 'Kansas', 32900, 0.22);
insert into fruit_imports values(2, 'Avocado', 'All Year', 'Nebraska', 27000, 0.15);
insert into fruit_imports values(3, 'Coconut', 'All Year', 'California', 15200, 0.75);
insert into fruit_imports values(4, 'Orange', 'Winter', 'California', 17000, 0.22);
insert into fruit_imports values(5, 'Pear', 'Winter', 'Iowa', 37250, 0.17);
insert into fruit_imports values(6, 'Lime', 'Spring', 'Indiana', 40400, 0.15);
insert into fruit_imports values(7, 'Mango', 'Spring', 'Texas', 13650, 0.60);
insert into fruit_imports values(8, 'Orange', 'Spring', 'Iowa', 18000, 0.26);
insert into fruit_imports values(9, 'Apricot', 'Spring', 'Indiana', 55000, 0.20);
insert into fruit_imports values(10, 'Cherry', 'Summer', 'Texas', 62150, 0.02);
insert into fruit_imports values(11, 'Cantaloupe', 'Summer', 'Texas', 8000, 0.49);
insert into fruit_imports values(12, 'Apricot', 'Summer', 'Kansas', 14500, 0.20);
insert into fruit_imports values(13, 'Mango', 'Summer', 'Texas', 17000, 0.68);
insert into fruit_imports values(14, 'Pear', 'Fall', 'Nebraska', 30500, 0.12);
insert into fruit_imports values(15, 'Grape', 'Fall', 'Illinois', 72500, 0.35);



SELECT * FROM fruit_imports;

SELECT state, sum(supply) sum_supply from fruit_imports
group by state
order by sum_supply desc limit 1;

select season, max(cost_per_unit) max_cost
from fruit_imports
group by season
order by max_cost desc;

select state
from fruit_imports
group by name, state
having count(state) > 1
order by name;

select season, COUNT(name)
from fruit_imports
group by season
having count(name) = 3 or count(name) = 4;

select state, sum(supply * cost_per_unit) total_cost
from fruit_imports
group by state
order by total_cost desc limit 1;


CREATE table fruits (fruit_name varchar(10));
INSERT INTO fruits VALUES ('Orange');
INSERT INTO fruits VALUES ('Apple');
INSERT INTO fruits VALUES (NULL);
INSERT INTO fruits VALUES (NULL);

select * from fruits;

select count(COALESCE(fruit_name, 'None'))
from fruits;