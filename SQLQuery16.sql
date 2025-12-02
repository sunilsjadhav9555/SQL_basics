select *, ROW_NUMBER() over(order by salary) as row_number from employees;

select *, RANK() over(order by salary) as rank from employees;

select *, DENSE_RANK() over(order by salary) as dense_rank from employees;

select *, ROW_NUMBER() over(order by salary) as row_number,
RANK() over(order by salary) as rank,
DENSE_RANK() over(order by salary) dense_rank
from employees;

select *,DENSE_RANK() over (order by salary desc) as dense_rank from employees;

select * from
(
select *, dense_rank() over (order by salary desc) as salary_rank from employees
) a where a. salary_rank = 3;

select *, ROW_NUMBER() over(partition by department order by salary) as row_number from employees a;

select *, RANK() over (partition by department order by salary) as rank from employees a;

select *, DENSE_RANK() over(partition by department order by salary) as dense_rank from employees a;

select *, ROW_NUMBER() over(partition by department order by salary) as row_number,rank() over(partition by department order by salary) as rank,
DENSE_RANK() over (partition by department order by salary) dense_rank
from employees a;


select * from
(
select *, DENSE_RANK() over(partition by department order by salary desc) as salary_rank from employees
)a where a.salary_rank = 3;

select * from employees;

select * from employees order by hire_date;

select *, lead(name) over(order by hire_date) as next_hire from employees a;

select *, lag(name) over(order by hire_date) as next_hire from employees a;

select * ,lag(name, 2) over(order by hire_date) as prev_hire from employees a;

select *, LEAD(name) over (order by hire_date) as next_hire from employees a;

select *, lag(name) over (partition by department order by hire_date) as
prev_hire from employees a;

select *, LEAD(name) over(partition by department order by hire_date) as
next_hire from employees a;

with deptavg as (
	select department, avg(salary) as avg_salary
	from employees group by department
)
select * from deptavg;

with deptavg as (
	select department, AVG(salary) as avg_salary
	from employees
	group by department
)
select e.emp_id, e.name, e.department, e.salary
from employees e join deptavg d
on e.department = d.department
where e.salary > d.avg_salary;