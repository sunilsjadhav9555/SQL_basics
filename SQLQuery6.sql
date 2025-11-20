create table employees (
	employeeid int,
	employeename varchar(100),
	age int,
	salary int,
	bonus int,
	department varchar(50)
);

select * from employees;

insert into employees (employeeid, employeename, age, salary, bonus,department)
values
(1, 'John Smith', 28, 50000, 4000, 'HR'),
(2, 'Alice Brown', 34, 70000, 6000, 'IT'),
(3, 'Bob Green', 22, 45000, 10000, 'HR'),
(4, 'Charlie Blue', 29, 80000, 9000, 'IT'),
(5, 'David White', 41, 90000, 8000, 'HR');

select * from employees order by employeename;

select * from employees order by employeename desc;

select * from employees order by salary;

select * from employees order by salary asc;

select * from employees order by salary desc;

select * from employees order by department, salary desc;

insert into employees (employeeid,employeename,age,salary,bonus,department)
values (6,'rahul sharma',null,65000,7000,'it');

select * from employees order by age;

select employeeid,employeename,age,salary,bonus,(salary +  bonus) as
totalcompensation from employees order by totalcompensation desc;

select * from employees order by 3;

insert into employees (employeeid,employeename,age,salary,bonus,department)
values (6,'rahul sharma',null,65000,65000,'it');

select max(salary) from employees;

select employeename, len(employeename) from employees;