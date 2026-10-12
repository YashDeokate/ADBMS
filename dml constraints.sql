create database company_db;
use company_db;
show databases;
create table employee(empid int not null, f_name varchar(50),l_name varchar(30), emp_age int, emp_zone varchar(20));
desc employee;
insert into employee values(null,"rhi","gandhi",40,"west");
insert into employee values(101,"rhi","gandhi",40,"west");

-- NEW table
create table employee1(empid int not null, f_name varchar(50),l_name varchar(30),  unique (empid) );
insert into employee1 values(101,"yash","deokate"); 
insert into employee1 values(101,"rhiya","gandhi");-- wont execute because of same empid   
select*from employee1;

-- new table
create table employee3(empid int not null, f_name varchar(50),l_name varchar(30), empAge int, check (empAge>20) );
insert into employee3 values(101,"yash","deokate",19); -- wont execute
insert into employee3 values(101,"yash","deokate",24); -- executed

alter table employee3 add column salary int;
alter table employee3 drop salary;
alter table employee3 add column salary int, add check(salary >=5000);
desc employee3;
select*from employee3;
insert into employee3 values(102,"nik","deo",25,30000); 
insert into employee3 values(101,"yash","deokate",22,5000); 

show create table employee3;
alter table employee3 drop check employee3_chk_1;
insert into employee3 values(103,"rhi","gandhi",22,1000); 

create table employee5(empid int primary key, f_name varchar(50),l_name varchar(30), empAge int, salary int );
insert into employee5 values(null,"yash","deokate",22,5000); -- not executed
insert into employee5 values(101,"yash","deokate",22,5000);-- executed
alter table employee5 add constraint chk_empAge_salary check(empAge >20 and salary>=5000); 
	insert into employee5 values(102,"rhi","deo",22,8000); 
	insert into employee5 values(103,"nik","deo",23,30000); 
    show create table employee5;







