create database CompanyDB;
use CompanyDB;
Create table Employees (EmpID int Primary Key, EmpName varchar(20), Salary int , JoinDate date );
desc employees;
Create  table Departments (DeptID Int Primary Key, DeptName  varchar(20));
desc departments;
alter table employees add email varchar(100);
alter table departments add dept_location varchar(100);
alter table employees add phone int not null;
alter table employees modify Empname varchar(50);
alter table departments drop primary key;
alter table  employees add DeptID int;
alter table employees add constraint fk foreign key(DeptID )references departments(DeptID);
alter table departments modify DeptID  int primary key;
alter table departments drop dept_id; 
show  create table EmployeeDetails;
alter table EmployeeDetails rename employees;
alter table employees rename column EmpName  to EmployeeName;
desc employees;
alter table employees add age int;
alter table  employees add constraint age_check check(age>=20);
alter table  employees add constraint sal_check check(salary>=2000);
alter table employees drop  phone;
desc employees;
alter table employees rename EmployeeDetails;
desc EmployeeDetails;


alter table EmployeeDetails drop constraint age_check;
alter table EmployeeDetails drop constraint sal_check;
show  create table EmployeeDetails;


alter table EmployeeDetails drop  DeptID;
drop table departments;

desc EmployeeDetails;