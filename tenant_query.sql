USE sql_practice;

CREATE TABLE TENANTS(TENANT varchar(30), YEAR int, SALES int);

INSERT INTO TENANTS VALUES('Tenant 1', 2014, 2000),
('Tenant 1', 2015, 5000),
('Tenant 2', 2013, 1000),
('Tenant 2', 2014, 1500),
('Tenant 2', 2015, 800);
select t2.tenant, t2.year, t1.year, t2.year - 1,t2.sales, case when t2.year is not null 
then ((t2.sales - t1.sales)/t1.sales) end yoy
from t1
right join
t2
on t2.tenant = t1.tenant and t1.year = t2.year-1;

CREATE TABLE t1(TENANT varchar(30), YEAR int, SALES int);

INSERT INTO t1 VALUES('Tenant 1', 2014, 2000),
('Tenant 1', 2015, 5000),
('Tenant 2', 2013, 1000),
('Tenant 2', 2014, 1500),
('Tenant 2', 2015, 800);

CREATE TABLE t2(TENANT varchar(30), YEAR int, SALES int);

INSERT INTO t2 VALUES('Tenant 1', 2014, 2000),
('Tenant 1', 2015, 5000),
('Tenant 2', 2013, 1000),
('Tenant 2', 2014, 1500),
('Tenant 2', 2015, 800);

