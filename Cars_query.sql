CREATE Database ShowRoom;
USE ShowRoom;

CREATE TABLE Cars
(
id INT,
name VARCHAR(50) NOT NULL,
company VARCHAR(50) NOT NULL,
power INT NOT NULL
);


INSERT INTO Cars
VALUES
(1, 'Corrolla', 'Toyota', 1800),
(2, 'City', 'Honda', 1500),
(3, 'C200', 'Mercedez', 2000),
(4, 'Vitz', 'Toyota', 1300),
(5, 'Baleno', 'Suzuki', 1500),
(6, 'C500', 'Mercedez', 5000),
(7, '800', 'BMW', 8000),
(8, 'Mustang', 'Ford', 5000),
(9, '208', 'Peugeot', 5400),
(10, 'Prius', 'Toyota', 3200),
(11, 'Atlas', 'Volkswagen', 5000),
(12, '110', 'Bugatti', 8000),
(13, 'Landcruiser', 'Toyota', 3000),
(14, 'Civic', 'Honda', 1800),
(15, 'Accord', 'Honda', 2000);

select * from Cars;

select name, company, power, row_number() over (order by power) as rownumber from Cars;
select name, company, power, row_number() over (partition by company order by power) as rownumber from Cars;
select name, company, power, rank() over (order by power) as ranking from Cars;
select name, company, power, rank() over (partition by company order by power ) as ranking from Cars;
select name, company, power, dense_rank() over (order by power) as denseranking from Cars;
select name, company, power, dense_rank() over (partition by company order by power) as denseranking from Cars;