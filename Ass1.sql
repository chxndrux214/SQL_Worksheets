create database solit
use solit


create table salesman(salesmanid int,salesmanname varchar(255),commission int,city varchar(255),age int)
insert into salesman values
(101,'joe',50,'california',17),
(102,'simon',75,'texas',25),
(103,'jessie',105,'florida',35),
(104,'danny',100,'texas',22),
(105,'lia',65,'new jersy',30)
select * from salesman


create table customer (salesmanid int,customerid int,customername varchar(255),purchaseamount int)
insert into customer values
(101,2345,'andrew',550),
(103,1575,'lucky',4500),
(104,2345,'andrew',4000),
(107,3747,'remona',2700),
(110,4004,'julia',4545)
select * from customer



create table orders(ordersid int,customerid int,salesmanid int,orderdate date,amount int)
insert into orders (ordersid,customerid,salesmanid,orderdate,amount) values
(5001,2345,101,'2021-07-01',550),
(5003,1234,105,'2022-02-15',1500)
select * from orders

TASK 1:
--Insert a new record in your Orders table
insert into orders values(5004,2356,107,'2023-04-11',800)

TASK 2:
-- Add Primary key constraint for SalesmanId column in Salesman table
ALTER TABLE Salesman ALTER COLUMN SalesmanId INT NOT NULL;

ALTER TABLE Salesman ADD CONSTRAINT PK_Salesman_SalesmanId PRIMARY KEY (Salesmanid)

-- Add default constraint for City column in Salesman table
ALTER TABLE Salesman
ADD CONSTRAINT DF_Salesman_City DEFAULT 'DefaultCity' FOR City

-- Add Foreign key constraint for SalesmanId column in Customer table

DELETE FROM Customer WHERE SalesmanId NOT IN (SELECT SalesmanId FROM Salesman)
ALTER TABLE Customer ADD CONSTRAINT FK_Customer_SalesmanId FOREIGN KEY (SalesmanId) REFERENCES Salesman(SalesmanId)


-- Add not null constraint in Customer_name column for the Customer table
ALTER TABLE Customer ALTER COLUMN CustomerName VARCHAR(255) NOT NULL


TASK 3:
--Fetch the data where the Customer’s name is ending with ‘N’ also get the purchaseamount value greater than 500

select * from customer where customername like '%n' and purchaseamount > 500

TASK 4:
--Using SET operators, retrieve the first result with unique SalesmanId values from twotables, and the other result containing SalesmanId with duplicates from two tables.

select salesmanid from salesman
union
select salesmanid from customer

select salesmanid from salesman
union all
select salesmanid from customer


TASK 5:
--Display the below columns which has the matching data.Orderdate, Salesman Name, Customer Name, Commission, and City which has therange of Purchase Amount between 500 to 15000

select * from customer
select * from salesman
select * from orders

select o.orderdate,s.salesmanname,c.customername,s.commission,s.city from salesman s inner join orders o on  s.salesmanid=o.ordersid
inner join customer c on o.ordersid=c.customerid where c.purchaseamount between 500 and 15000

TASK 6:
--Using right join fetch all the results from Salesman and Orders table.

select * from salesman s right join orders o on s.salesmanid=o.ordersid


