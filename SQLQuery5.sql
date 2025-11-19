create table products (
	productid int primary key,
	productname varchar(100) not null,
	category varchar(50),
	price decimal(10,2),
	stockquantity int
);

create table orders (
	orderid int primary key,
	productid int,
	quantity int,
	orderdate date,
	customername varchar(100),
	foreign key (productid) references products(productid)
);

insert into products (productid, productname, category, price, stockquantity)
values
(1, 'Laptop', 'Electronics', 850.00, 50),
(2, 'Smartphone', 'Electronics', 600.00, 100),
(3, 'Coffee Maker', 'Appliances', 120.00, 30),
(4, 'Desk Chair', 'Furniture', 150.00, 25),
(5, 'Monitor', 'Electronics', 200.00, 40);

insert into orders (orderid, productid, quantity, orderdate, customername)
values
(101, 1, 2, '2025-04-20', 'Alice Johnson'),
(102, 2, 1, '2025-04-21', 'Bob Smith'),
(103, 3, 1, '2025-04-22', 'Carol Lee'),
(104, 5, 3, '2025-04-23', 'David Kim'),
(105, 4, 1, '2025-04-24', 'Eve Martinez');


select * from products;

select * from orders;

INSERT INTO Orders (OrderID, ProductID, Quantity, OrderDate, CustomerName)
VALUES (106, 10, 1, '2025-04-25', 'Frank Li');

INSERT INTO Orders (OrderID, ProductID, Quantity, OrderDate, CustomerName)
VALUES (108, -1, 1, '2025-04-25', 'Henry Ford');

delete from products where productid = 1;

delete from products where productname = 'laptop';


alter table Orders drop constraint FK__Orders__ProductI__4A8DFDBE;

alter table orders add constraint fk_orders_products
foreign key (productid) references products(productid)
on delete set null;

delete from products where productid = 2;

alter table orders drop constraint fk_orders_products;

alter table orders add constraint fk_orders_products
foreign key (productid) references products(productid)
on delete cascade;

delete from products where productid = 3;

select 5 - 3;
select salary from employee_data;
select salary, salary + 10000 as newsalary from employee_data;