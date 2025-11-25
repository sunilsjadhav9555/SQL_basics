create table departments (
	departmentid int,
	departmentname varchar(50)
);

drop table students;

create table students (
	 studentid int,
	 studentname varchar(50),
	 departmentid int
);


INSERT INTO Students VALUES (101, 'Alice', 1); 
INSERT INTO Students VALUES (102, 'Bob', 2);
INSERT INTO Students VALUES (103, 'Charlie', 1);
INSERT INTO Students VALUES (104, 'Diana', 3);
INSERT INTO Students VALUES (105, 'Ethan', 2);

INSERT INTO Departments VALUES (1, 'Computer Science');
INSERT INTO Departments VALUES (2, 'Mechanical');
INSERT INTO Departments VALUES (3, 'Electrical');

select * from students;

select * from departments

select studentid, studentname, students.departmentid,departmentname from students
inner join departments on students.departmentid = departments.departmentid;

select s.studentid, s.studentname, s.departmentid,d.departmentname
from students as s 
inner join departments as d on s.departmentid = d.departmentid;

insert into students values (106,'fiona',4);

insert into students values (107,'ginny',5);

select s.studentid, s.studentname,s.departmentid,d.departmentname
from students as s
left outer join departments as d on s.departmentid = d.departmentid;


insert into departments values(6, 'electronics');

insert into departments values (7, 'civil');

select s.studentid, s.studentname,d.departmentid, d.departmentname
from students as s
right outer join departments as d on s.departmentid = d.departmentid;

insert into departments values (null, 'it');

insert into students values(108, 'henry',null);

select * from students;

select studentid, studentname,s.departmentid,d.departmentid,departmentname
from students as  s full outer join departments as d on s.departmentid = d.departmentid;