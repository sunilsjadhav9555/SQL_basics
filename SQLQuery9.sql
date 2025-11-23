select CAST(123.45 as varchar(10)) as textvalue;

select 'your bill is' +  CAST(123.45 as varchar(10));

select GETDATE(), CAST(GETDATE() as date) as justdate;

select CAST(123.4567 as  int) as truncatedvalue;

select * from orders where orderdate > CAST('2025-04-22' as date);

select * from orders where orderdate> '2025-04-22';

select CAST('2025-04-22' as date);

select CAST('2025-04-22 18:51:26' as datetime);

select CONVERT(varchar(10), 123.45) as textvalue;

select CONVERT(int, 123.45) as textvalue;

select CONVERT(varchar(20), GETDATE(), 103) as formatteddateuk;

select CONVERT(varchar(20), GETDATE()) as defaultdate;

select CONVERT(varchar(20), GETDATE(), 1)

select CONVERT(varchar(30), GETDATE(), 9)

select CHOOSE(2, 'red','green','blue') as colorchoice;

select CHOOSE(1,'red','green','blue' ) as colorchoice;

select CHOOSE(3, 'red','green','blue') as colorchoice;

select E_Id,
		CHOOSE(DAY(Hire_Date) % 3 + 1, 'Team A', 'Team B','Team c') as assignedTeam
		from employee_data;

select DAY(Hire_Date), DAY(Hire_Date) % 3, DAY(Hire_Date) % 3 + 1 from
employee_data;

select GREATEST(10, 5, 20, 7) as maxvalue;


select employeeId,
		GREATEST(salesQ1, salesQ2, salesQ3, salesQ4) as bestQuartersales
		from  salesperformance;

select LEAST(10, 5, 20, 7) as minvalue;

select LEAST(startdate, reviewdate, enddate) as earliestmilestone 
from projects;

select E_ID, F_NAME, DEPT_ID,SALARY,
IIF(Salary > 50000, 'high','low') as SalaryLevel
from employee_data;

update employee_data
set salary_range = IIF (Salary >= 50000, 'high', 'low');


select  E_ID, F_Name, Dept_ID,salary,
	case
		when salary >= 80000 then 'executive'
		when salary >= 60000 then 'mid-level'
		when salary >= 40000 then 'entry-level'
		else 'internship'
	end as SalaryBand
from employee_data;

select * from employee_data;


select 
	EmployeeID,
	JobTitle,
	case
		when JobTitle like '%Engineering%' THEN 'Tech'
		when JobTitle like '%HR%' Then 'Human Resources'
		when JobTitle like '%Manager%' Then 'Leadership'
		else 'other'
	end as department
from employees;


select coalesce(null, null, 'third_value', 'fourth_value');

select e_id, f_name, coalesce(Dept_id, 'NA'),coalesce(salary, 25000) from employee_data;

select * from employee_data;

select coalesce(null, null, 'third_value', 1);

create table employeescores (
	empid int,
	score1 int,
	score2 int,
	score3 int
);


insert into employeescores (empid, score1, score2,score3) values
(101,85,null,90),
(102,null,null,75),
(103, null,null,null);


select * from employeescores;

select 
	empid,
	coalesce(score1, score2, score3) as firstavailablescore
	from employeescores;

select nullif(100, 100) as result;
select nullif(100, 50) as result;

select * from employees;

drop table employees;

CREATE TABLE Employees (
    EmployeeID INT,
    EmployeeName VARCHAR(100),
    Age INT,
    Salary INT,
    Bonus INT,
    Department VARCHAR(50) );

	INSERT INTO Employees (EmployeeID, EmployeeName, Age, Salary, Bonus, Department)
VALUES
(1, 'John Smith', 28, 50000, 5000, 'HR'),
(2, 'Alice Brown', 34, 70000, 8000, 'IT'),
(3, 'Bob Green', 22, 45000, 15000, 'HR'),
(4, 'Charlie Blue', 29, 80000, 25000, 'IT'),
(5, 'David White', 41, 90000, 10000, 'HR');

select upper(EmployeeName) from Employees;

select min(Salary) from Employees;

select max(salary) from Employees;

select count(salary) from Employees;

select sum(salary) from Employees;

select AVG(salary) from Employees;