create database college;
show databases;
use college;
create table employee(empid int, f_name varchar(50),l_name varchar(30), emp_age int, emp_zone varchar(20));
desc employee;
insert into employee values(102,"rhi","gandhi",40,"west");
insert into employee values(103,"nikhil","deo",20,"noth");
insert into employee values(104,"mohit","dhumal",30,"south");
select*from employee;

insert into employee (empid , f_name,l_name , emp_age, emp_zone)
values (105,"parnika","bhagwat",25,"east"),
(106,"ram","laxman",34,"west");
update employee set emp_zone = "none" where empid=106;
update employee set emp_age=29,emp_zone="north"where empid=101;
delete from employee where empid=106;
select*from employee;
select empid,f_name from employee;
truncate employee;
