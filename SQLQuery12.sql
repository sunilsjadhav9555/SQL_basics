create table tableA (
	id int,
	name varchar(50)
);

create table tableB (
	
	code char(1),
	description varchar(50)
);

insert into tableA (id, name) values
(1,'alice'),
(2,'bob');

insert into tableB (code, description) values
('x', 'item x'),
('y','item y'),
('z', 'item z');

select A.id, A.name, B.code, B.description
from tableA A
cross join tableB B;

select a.id, a.name,b.code, b.description
from tableB b
cross join tableA A;

select * from tableB B
cross join TableA A;


select * from students s join departments d
on s.departmentid = d.departmentid;


select * from students s left join departments d
 on s.departmentid = d.departmentid;

 select * from students s right join departments d
 on  s.departmentid =  d.departmentid;

 select * from students s full join departments d
 on s.departmentid = d.departmentid;

 select * from TableA, TableB;

 select * from students s, departments d
 where s.departmentid = d.departmentid;

 select * from students s join departments d 
 on s.departmentid = d.departmentid;

 create table internaltraining (
	employeeid int,
	employeename nvarchar(100),
	skill nvarchar(100)
 );

 insert into internaltraining (employeeid, employeename, skill) values
(1, 'Alice Carter', 'SQL'),
(2, 'Bob Daniels', 'Python'),
(3, 'Charlie Evans', 'Project Management'),
(4, 'Diana Foster', 'Excel'),
(5, 'Ethan Green', 'Power BI');

CREATE TABLE CertifiedSkills (
    EmployeeID INT,
    EmployeeName NVARCHAR(100),
    Skill NVARCHAR(100) );

	INSERT INTO CertifiedSkills (EmployeeID, EmployeeName, Skill) VALUES
(2, 'Bob Daniels', 'Python'),
(3, 'Charlie Evans', 'Agile'),
(4, 'Diana Foster', 'Excel'),
(6, 'Fiona Hart', 'SQL'),
(7, 'George Ivy', 'Azure');

select * from InternalTraining;
select * from CertifiedSkills;

select * from internaltraining
union all
select * from CertifiedSkills;

select employeeid, employeename, skill from internaltraining
union all
select employeeid, employeename from certifiedskills;

select EmployeeID, EmployeeName, Skill from InternalTraining
UNION ALL
select EmployeeID, EmployeeName from CertifiedSkills;

select EmployeeID, EmployeeName from InternalTraining
UNION ALL
select EmployeeName, Skill from CertifiedSkills;


select EmployeeID , EmployeeName , Skill from InternalTraining
UNION ALL
select EmployeeID empid, EmployeeName name, Skill from CertifiedSkills;


select EmployeeID , EmployeeName , Skill from InternalTraining 
UNION ALL
select EmployeeID , EmployeeName , Skill from CertifiedSkills order by EmployeeID;