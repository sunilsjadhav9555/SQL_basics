select email, RIGHT(email, 11) from employees;

select * from employees;

select email,RIGHT(email, 9) from employees;

select email, len(email) from employees;

select email, charindex('@',email) from employees;

select CEILING(12.0001) as ceilvalue;

select floor(12.3) as floor_val;

select floor(12.9) as floor_val;

select floor(-12.3) as floor_val;

select ceiling(-12.3) as ceilvalue;

select exp(1) as e_power1;

select exp(2) as e_power2;

select exp(3) as e_power2;

select power(2, 3) as tworaisedtopower3;

select power(9, 2) as nineraisedtopower2;

select RAND() as randomnumber;

select RAND(100) as randomseeded;

select ROUND(123.4567, 2) as roundedtwodecimals;

select ROUND(123.4567, 0) as roundedwhole;

select round(123.5567, 0) as roundedwhole;

select ROUND(123.4512, 2) as roundedtwodecimals;

select SQRT(16) as squareroot;

select SQRT(2) as sqrttwo;

select SQUARE(5) as squareoffive;

select SQUARE(-3) as squreofnegative;

select SYSDATETIME() as highprecisionnow;

CREATE TABLE employee_data (
    e_id INT PRIMARY KEY,
    f_name VARCHAR(50),
    Dept_id INT,
    Email_id VARCHAR(100),
    Salary DECIMAL(10,2),
    Hire_Date DATE
);



INSERT INTO employee_data 
(e_id, f_name, Dept_id, Email_id, Salary, Hire_Date)
VALUES
(101, 'Arjun', 10, 'arjun.k@company.com', 55000, '2021-03-15'),
(102, 'Neha', 20, 'neha.s@company.com', 62000, '2020-07-22'),
(103, 'Ravi', 30, 'ravi.t@company.com', 48000, '2022-01-10'),
(104, 'Sneha', 10, 'sneha.r@company.com', 71000, '2019-11-05'),
(105, 'Karan', 40, 'karan.m@company.com', 53000, '2023-02-18'),
(106, 'Priya', 20, 'priya.d@company.com', 59000, '2021-09-12'),
(107, 'Rahul', 30, 'rahul.v@company.com', 65000, '2020-05-30'),
(108, 'Simran', 50, 'simran.l@company.com', 72000, '2022-08-25'),
(109, 'Vikram', 40, 'vikram.p@company.com', 56000, '2019-12-10'),
(110, 'Meera', 10, 'meera.n@company.com', 60000, '2023-06-08');
 

 select * from employee_data;

 insert into employee_data(e_id, f_name,Dept_id, Email_id,Salary,Hire_Date)
 values
 (111, 'raj','10','raj@test.com','88000', SYSDATETIME());

 update employee_data 
 set Hire_Date = SYSDATETIME()
 where e_id = 101;

 select GETDATE() as nowdatetime;

 select CURRENT_TIMESTAMP as currentts;

 select DATENAME(MONTH,GETDATE()) as monthname;

 select DATENAME(WEEKDAY, GETDATE()) as weekdayname;

 select DATENAME(year, GETDATE()) as year;

 select DATENAME(DAY, GETDATE()) as day;

 select DATENAME(QUARTER, GETDATE()) as quarter;

 select DATENAME(MINUTE, GETDATE()) as minute;

 select DATEPART(MONTH, GETDATE()) as month;

 select DATEPART(WEEKDAY, GETDATE()) as dayofweek;

 select DATEPART(YEAR, GETDATE()) as year;

 select DATEPART(DAY, GETDATE()) as day;

 select DATEPART(QUARTER,GETDATE()) as quarter;

 select DATEPART(MINUTE, GETDATE()) as minute;

 select DATETRUNC(MONTH, GETDATE()) as startofmonth;

 select DATETRUNC(YEAR, GETDATE()) as startofyear;

 select DATETRUNC(WEEK ,GETDATE()) as startofweek;

 select DATETRUNC(DAY, GETDATE()) as startofday;

 select DATETRUNC(QUARTER, GETDATE()) as startofquarter;

 select DATETRUNC(MINUTE, GETDATE()) as startofminute;

 select DAY(GETDATE()) as dayofmonth;

 select MONTH(GETDATE()) as monthnumber;

 select YEAR(GETDATE()) as yearvalue;

 select YEAR('2023-10-31') as yearvalue;

  select month('2023-10-31') as monthvalue;

   select day('2023-10-31') as dayvalue;

select hire_date, year(hire_date), MONTH(hire_date), DAY(hire_date) from
employee_data;

select DATEFROMPARTS(2025,12,25) as christmas;

select DATETIMEFROMPARTS(2025, 12, 25, 12 , 56, 23, 123) 

select DATEDIFF(DAY, '2025-01-01', GETDATE()) as dayspassedthisyear;

select DATEDIFF(MONTH, '2025-01-01', GETDATE()) as monthspassedthisyear;

select DATEADD(DAY, 30, GETDATE()) as datein30days;

select DATEADD(MONTH, -1, GETDATE()) as lastmonth;

select GETDATE() +  30 as dateplus30;

select GETDATE() - 30 as dateminus30;

select EOMONTH(GETDATE()) as endofthismonth;

select EOMONTH(GETDATE(), 1) as endofnextmonth;