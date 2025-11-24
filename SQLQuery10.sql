insert into employees (employeeid, employeename, age , salary, bonus,department)
values (6, 'ethan hunt', null, 80000,15000,'hr');

select * from employees;

select count(age) from employees;

select count(*) from employees;

select  count(0) from employees;

select sum(age) from employees;

select avg(age) from employees;

select avg(cast(age as decimal)) from employees;

select 154/5 ;

select 154/6 ;


select coalesce(age, 0) from employees;

select avg(coalesce(age, 0)) from employees;

select min(salary) as min_sal, MAX(salary) as max_sal, sum(salary) as
sum_sal,avg(salary) as avg_sal, count(salary) as row_count_sal from employees;

select * from employees;

select avg(salary) as avg_sal from employees;

select department, avg(salary) from employees;

select department, avg(salary) from employees group by department;

select department, count(salary) from employees group by department;

select department, min(salary) from employees group by department;

select department, max(salary) from employees group by department;

select department, avg(bonus) as avg_bonus, avg(salary) avg_sal from employees group by department;

select department, bonus, avg(salary) from employees group by department;

select department, avg(bonus) avg_bonus, avg(salary) as avg_salary from 
employees group by department;

drop table students;

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    City VARCHAR(50),
	Gender VARCHAR(10), -- 'Male' or 'Female' 
    Age INT
);

INSERT INTO Students (StudentID, Name, Gender, City, Age) VALUES
(1, 'Alice',   'Female', 'Delhi',    20),
(2, 'Bob',     'Male',   'Delhi',    21),
(3, 'Charlie', 'Male',   'Mumbai',   22),
(4, 'Diana',   'Female', 'Delhi',    19),
(5, 'Eva',     'Female', 'Chennai',  20),
(6, 'Frank',   'Male',   'Mumbai',   23),
(7, 'Grace',   'Female', 'Chennai',  22),
(8, 'Harry',   'Male',   'Delhi',    21),
(9, 'Isha',    'Female', 'Mumbai',   20),
(10, 'Jack',   'Male',   'Chennai',  21);

select * from Students;


select city, gender, count(*) as cnt from students group by city, gender;

select count(*) as cnt from students group by city;

select city, count(*) as cnt from students group by city;

select city from students group by city, gender;

select city,gender,count(*) cnt from students group by city, gender;

select city, count(*) from students group by city, gender;

select city, gender, count(*) from students group by city;

select city, gender from students group by city, gender;

select distinct city, gender from students;

select * from employees where age is not null;

select * from employees where salary > 50000;

select department, avg(salary) from employees
where age is not null
group by department;

select city, gender, count(*) as cnt from students
where age >=  20
group by city, gender;

select city, gender, count(*) as cnt from students
where age >=20
group by city, gender
order by city;

select city, gender, count(*) as cnt from students
where age>= 20
group by city, gender
order by cnt desc;

select city, gender, count(*) cnt from students group by city, gender;

select city, gender,count(*) cnt from students
group by city, gender
having count(*) > 1;

select city,gender,count(*) as cnt from students
group by city, gender
having count(*) > 1
order by city;

select storeid, sum(salesamount) as totalsales
from sales
group by storeid
having sum(salesamount) > 10000;