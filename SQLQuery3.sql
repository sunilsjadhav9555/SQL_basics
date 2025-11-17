
create table bkstudents (

studentid int,
name varchar(100),
enrollmentdate date
);

insert into bkstudents
values (2,'sameer', '2024-06-30')

select * from bkstudents;

begin transaction;

delete from bkstudents where name = 'sameer';


rollback;


begin transaction;

delete from bkstudents where name = 'sammer';

commit;

create table product
( productid int,
productname varchar(100),
price decimal(10,2));

select * from product;

insert into product (productid, productname,price)
values
(101, 'bag',999.99),
(102,'camera',55000),
(103, 'sunglasses', 1500),
(104, 'watch', 5000),
(106,'keyboard',1250);

create table product_bkp
(productid int,
productname varchar(100),
price decimal(10,2));

insert into product_bkp (productid,productname,price)
values
(101,'bag',999.99),
(102, 'camera', 55000),
(103, 'smart watch',9000),
(104, 'sunglasses',1500),
(105, 'headphone',1450);

select * from product_bkp;

merge into product_bkp
using product
on product_bkp.productid = product.productid

when matched then
	update set product_bkp.productname = product.productname,
			   product_bkp.price = product.price
when not matched by target then
	insert (productid, productname,price)
	values(product.productid, product.productname,product.price)

when not matched by source then 
	delete;

insert into product 
values
(107,'headphone',-12);

insert into product 
values
(107, null, 5800);


create table employees (
id int not null,
name varchar(100) not null);

select * from employees;

insert into employees (id, name)
values (1,'pratik'),
(2,'tushar'),
(3,'ravi');

insert into employees (id, name)
values
(5, null);

create table users (
	userid int unique,
	email varchar(100)
);

insert into users (userid, email) values (1, 'test@example.com');
insert into users (userid, email) values (2, 'dummy@example.com');

select *  from users;

insert into users (userid, email) values (1, 'te@example.com');

insert into users (userid,email) values (null,'trail@example.com');