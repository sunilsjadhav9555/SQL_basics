select * from sales where  store_id in
(
select store_id from stores where region = 'west'
);

select * from Sales where store_id not in
(
select store_id from stores where region = 'west'
);

insert into Stores (store_id, store_name, region)
values
(null, 'sunrise outlet', 'west');

select * from Sales where store_id not in 
(
select store_id from stores where region = 'west' and store_id is not null
);

select product_name, price from products2
where price >  any (
select price from products where category = 'elctronics'
);

select product_name, price from products2
where price >  some (
select price from products where category = 'elctronics'
);

select product_name, price from Products2
where price > all (
select price from Products2 where category = 'toys'
);

select * from employees
	where salary = (select max(salary) from employees
		where salary < (select max(salary) from employees));

select * from employees
	where salary = (select max(salary) from employees where salary < (select max(salary) from employees));

	select emp_id, name, salary, department
	from employees e1 where salary > (
			select avg(salary) from employees e2
			where e2.department = e1.department
			);

	select department, avg(salary) avg_salary from employees group by department;