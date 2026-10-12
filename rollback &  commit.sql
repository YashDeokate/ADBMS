-- Starts a new transaction
/* Begin;
-- or
START TRANSACTION -- To execute multiple statements as a single transaction,
we must explicitly start the transaction.

COMMIT:- Saves all changes made during the transaction.
ROLLBACK:- Undoes all changes made during the transaction.
SAVEPOINT:- Sets a Savepoint withiun a transaction to roll back to later 
ROLLBACK To SAVEPOINT:- Rolls back to aspecific savepoint without affecting earlier changes. */

CREATE DATABASE TCL1;
USE TCL1;

CREATE TABLE orders(
	order_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    status VARCHAR(50)
);
DESC orders;

-- Start the transaction --
SET autocommit = 0; /* in MySQL auto commit mode is enabled by default which means whenever we execute any SQL statement
is automatically commited/*

/* So in such cases succeded transactions are automatically commited.
To diable the auto commit mode we are using this aslo we cannot disable the auto commit mode of DDL Commands.
In many DBMS it is disable ny default */

BEGIN; 
-- or START TRANSACTION;

INSERT INTO orders VALUES(101,'Geet','Pending');
INSERT INTO orders VALUES(102,'Bob','Pending');
select* from orders;
commit;
update orders set customer_name="raj" where order_id =102;
rollback;

-- step1 insert few orders

INSERT INTO orders VALUES(103,'om','Pending');
INSERT INTO orders VALUES(104,'karan','Pending');
savepoint sp1;
select* from orders;

--  step 2 : update one order
update orders set status='shipped' where order_id =103;
savepoint sp2;

rollback to sp1;

delete from orders where order_id=102;
select* from orders;
savepoint sp3;

-- we want to undo the delete but keep the update

rollback to sp2;
rollback to sp1;
rollback;