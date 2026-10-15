create database user;
show databases;
use user;
create table customer(custid int,cust_name varchar(20),city varchar(20),product varchar(20),price int);
desc customer;
insert into customer values (101,"yash","baramati","chips",100);
insert into customer values (102,"gandhi","karad","biscuit",20);
insert into customer values (103,"mohit","pune","icecream",55);
select*from customer;
alter table customer add primary key( custid) ;
select custid,cust_name,city from customer;
select * from customer where custid=103;
select * from customer where custid=101 or custid =103;
create table cloneTable as select * from customer;
select*from cloneTable;
drop table cloneTable;
select cust_name ,product,price from customer where price>50;
select* from customer where city="baramati";

-- sorting data using order by single column

select*from customer order by price;
select*from customer order by price desc;

-- sorting data using order by multiple colums
select*from customer order by price ,city;

select*from customer order by price asc ,city desc;

--  single row func
-- case conversion func

select upper(cust_name),lower(product) from customer where custid<103;
select upper(cust_name),lower(product) from customer;

alter table customer add lastname varchar(20);
desc customer;
select*from customer;
update  customer set lastname="deokate" where custid=101;
update  customer set lastname="rhiya" where custid=102;
update  customer set lastname="nikhil" where custid=103;

-- join two columns using concat
select concat(cust_name ,' ', lastname) from customer;

select concat(cust_name ,' ', lastname)as FullName from customer;

-- use of substr and instr func
select substr(cust_name,1,3) from customer;
select substr(cust_name,0,3) from customer;
select substr(cust_name,1,0) from customer;

-- inString query
select instr(cust_name,'a') as position from customer;
select substr(cust_name,1,2)as Substring, instr(cust_name,'y') as instring from customer;
select substr(cust_name,1,3), instr(cust_name,'y')  from customer where custid<3;


