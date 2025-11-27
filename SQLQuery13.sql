create table odi_team(
	playerid int,
	playername varchar(100)
);

create table t20_team (
	playerId int,
	playername varchar(100)
);

INSERT INTO ODI_Team (PlayerID, PlayerName) VALUES
(1, 'Rohit Sharma'),
(2, 'Virat Kohli'),
(3, 'Shubman Gill'),
(4, 'Shreyas Iyer'),
(5, 'KL Rahul'),
(6, 'Hardik Pandya'),
(7, 'Ravindra Jadeja'),
(8, 'Kuldeep Yadav'),
(9, 'Jasprit Bumrah'),
(10, 'Mohammed Siraj'),
(11, 'Mohammed Shami');

INSERT INTO T20_Team (PlayerID, PlayerName) VALUES
(1, 'Rohit Sharma'),
(2, 'Virat Kohli'),
(12, 'Suryakumar Yadav'),
(6, 'Hardik Pandya'),
(13, 'Rinku Singh'),
(14, 'Sanju Samson'),
(15, 'Washington Sundar'),
(16, 'Arshdeep Singh'),
(8, 'Kuldeep Yadav'),
(9, 'Jasprit Bumrah'),
(17, 'Axar Patel');

select * from odi_team;

select * from t20_team;

select playerid, playername from odi_team
union all
select playerid, playername from t20_team;

select playerid, playername from odi_team
union
select playerid,playername from t20_team;

select playerid,playername from odi_team
intersect
select playerid, playername from t20_team;

select playerid, playername from odi_team
except
select playerid,playername from t20_team;

select playerid,playername from t20_team
except
select playerid,playername from odi_team;

select playerid,playername from odi_team where playername not in ('rohit sharma','virat kohli')
intersect
select playerid,playername from t20_team;

(select playerid,playername from odi_team
except
select playerid,playername from t20_team)
union
(select playerid, playername from t20_team
except
select playerid, playername from odi_team);

(select playerid,playername, 'only odi' from odi_team
except
select playerid, playername, 'only odi' from t20_team)
union
(select playerid,playername, 'only t20' from t20_team
except
select playerid,playername, 'only t20' from odi_team);


select employeename, salary, department from Employees
where salary > (select avg(salary) from Employees);

select avg(salary) from Employees;

select * from Employees where salary > 69166;

delete from Employees where age is null;


select * from Employees where salary > 67000;

select * from Employees
where Salary > (select avg(salary) from employees);


drop table employees;
CREATE TABLE employees (
    emp_id INT,
    name VARCHAR(50),
    salary DECIMAL(10, 2),
    department VARCHAR(50),
    location VARCHAR(50)
);

INSERT INTO employees (emp_id, name, salary, department, location) VALUES
(1,  'Alice',   50000, 'HR',     'New York'),
(2,  'Bob',     60000, 'Sales',  'London'),
(3,  'Charlie', 70000, 'IT',     'Delhi'),
(4,  'Diana',   80000, 'Sales',  'New York'),
(5,  'Eve',     90000, 'IT',     'London'),
(6,  'Frank',   55000, 'HR',     'Delhi'),
(7,  'Grace',   75000, 'Sales',  'London'),
(8,  'Heidi',   85000, 'IT',     'New York'),
(9,  'Ivan',    62000, 'Finance','Delhi'),
(10, 'Judy',    72000, 'Finance','London'),
(11, 'Kevin',   66000, 'HR',     'New York'),
(12, 'Laura',   63000, 'Sales',  'Delhi'),
(13, 'Mallory', 71000, 'Finance','New York'),
(14, 'Niaj',    68000, 'IT',     'London'),
(15, 'Oscar',   54000, 'HR',     'Delhi');

select * from employees
where salary > (select AVG(salary) from employees);


DROP TABLE IF EXISTS Sales;
DROP TABLE IF EXISTS Products;
DROP TABLE IF EXISTS Stores;

CREATE TABLE Stores (
    store_id INT,
    store_name VARCHAR(50),
    region VARCHAR(20)
);


CREATE TABLE Products2 (
    product_id INT,
    product_name VARCHAR(50),
    category VARCHAR(30),
    price DECIMAL(10, 2)
);

CREATE TABLE Sales (
    sale_id INT,
    product_id INT,
    store_id INT,
    quantity INT,
    revenue DECIMAL(10, 2),
    sale_date DATE,
);


INSERT INTO Products2 (product_id, product_name, category, price)
VALUES
(101, 'Laptop A', 'Electronics', 800.00),
(102, 'Smartphone B', 'Electronics', 600.00),
(103, 'Board Game X', 'Toys', 30.00),
(104, 'Action Figure Y', 'Toys', 20.00),
(105, 'Wireless Headphones', 'Electronics', 150.00),
(106, 'Coffee Maker', 'Appliances', 90.00),
(107, 'Blender Z', 'Appliances', 60.00),
(108, 'Puzzle 1000pc', 'Toys', 25.00),
(109, 'Tablet C', 'Electronics', 300.00),
(110, 'Smartwatch D', 'Electronics', 250.00);


INSERT INTO Sales (sale_id, product_id, store_id, quantity, revenue, sale_date)
VALUES
(1, 101, 1, 3, 2400.00, '2024-12-01'),
(2, 102, 2, 2, 1200.00, '2024-12-03'),
(3, 103, 3, 5, 150.00, '2024-12-05'),
(4, 104, 4, 4, 80.00, '2024-12-06'),
(5, 105, 5, 6, 900.00, '2024-12-07'),
(6, 106, 1, 3, 270.00, '2024-12-08'),
(7, 107, 2, 4, 240.00, '2024-12-09'),
(8, 108, 3, 7, 175.00, '2024-12-10'),
(9, 109, 5, 2, 600.00, '2024-12-11'),
(10, 110, 6, 1, 250.00, '2024-12-12'),
(11, 104, 9, 5, 100.00, '2024-12-13'),
(12, 108, 9, 4, 100.00, '2024-12-14'),
(13, 101, 5, 2, 1600.00, '2024-12-15'),
(14, 102, 1, 3, 1800.00, '2024-12-16'),
(15, 105, 3, 2, 300.00, '2024-12-17');

INSERT INTO Stores (store_id, store_name, region)
VALUES
(1, 'Downtown Mart', 'West'),
(2, 'Central Mall', 'East'),
(3, 'Lakeview Store', 'West'),
(4, 'City Plaza', 'North'),
(5, 'Sunset Outlet', 'West'),
(6, 'Urban Shop', 'East'),
(7, 'Greenfield Retail', 'South'),
(8, 'Metro Point', 'North'),
(9, 'Seaside Mart', 'West'),
(10, 'Mountain View', 'South');

select * from sales where store_id in
(
select store_id from stores where region ='west'
);
