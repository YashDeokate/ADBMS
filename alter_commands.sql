create database institude;
use institude;

create table staff(staff_id int,first_name varchar(50),last_name varchar(20),DOB date,dept_id int);
create table department(dept_id int , dept_name varchar(20),dept_location varchar(20));

DESC staff;
desc department;

alter table staff add location varchar(20) , add joing_year date;
alter table staff add age int ,add contact_no int;
alter table staff Modify joing_year int;
alter table staff drop column contact_no;
alter table staff modify first_name varchar(20);
alter table staff add primary key (staff_id);
alter table department add primary key (dept_id);
alter table department drop primary key;
alter table staff  add foreign key (dept_id) references department(dept_id);
alter table staff add constraint fk_staff foreign key(Dept_id) references department(dept_id);
alter table department drop foreign key dept_id;
alter table staff rename staff1;
desc staff1;
rename table staff1 to staff;
desc staff;




