CREATE TABLE sales
(
	continent varchar(20),
	country varchar(20),
	city varchar(20),
	units_sold integer
);

INSERT INTO sales VALUES ('North America', 'Canada', 'Toronto', 10000);
INSERT INTO sales VALUES ('North America', 'Canada', 'Montreal', 5000);
INSERT INTO sales VALUES ('North America', 'Canada', 'Vancouver', 15000);
INSERT INTO sales VALUES ('Asia', 'China', 'Hong Kong', 7000);
INSERT INTO sales VALUES ('Asia', 'China', 'Shanghai', 3000);
INSERT INTO sales VALUES ('Asia', 'Japan', 'Tokyo', 5000);
INSERT INTO sales VALUES ('Europe', 'UK', 'London', 6000);
INSERT INTO sales VALUES ('Europe', 'UK', 'Manchester', 12000);
INSERT INTO sales VALUES ('Europe', 'France', 'Paris', 5000);



select * from sales
order by continent,country,city;

select continent,sum(units_sold)
from sales
group by continent;

select country,sum(units_sold)
from sales
group by country;

select city,sum(units_sold)
from sales
group by city;


select continent, country, city, sum(units_sold)
from sales
group by grouping sets(continent,country, city);


select continent, country, city, sum(units_sold)
from sales
group by grouping sets(continent,country, city, ());

select continent, country, city, sum(units_sold)
from sales
group by rollup(continent,country, city);

select continent, country, city, sum(units_sold)
from sales
group by cube(continent,country, city);
