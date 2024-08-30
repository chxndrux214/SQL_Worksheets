create database jomato2
use jomato2

select * from jomato

1. Create a stored procedure to display the restaurant name, type and cuisine where the
table booking is not zero.

CREATE PROCEDURE GetBookedRestaurants as
BEGIN
    SELECT restaurantname, restauranttype, cuisinesTYPE
    FROM jomato
    WHERE tablebooking > 0
END
exec getbookedrestaurants

2. Create a transaction and update the cuisine type ‘Cafe’ to ‘Cafeteria’. Check the result
and rollback it.

select * from jomato
begin try 
begin transaction
update jomato set cuisinestype='Cafe' where cuisinestype='Cafeteria'
print 'transaction committed'
end
try begin catch
rollback transaction
print 'transaction rollback'
end catch


3. Generate a row number column and find the top 5 areas with the highest rating of
restaurants.

SELECT TOP 5 area, max(rating) AS max_Rating
FROM jomato
GROUP BY area
ORDER BY max(rating) DESC

4. Use the while loop to display the 1 to 50.

DECLARE @Counter INT
SET @Counter = 1

WHILE @Counter <= 50
BEGIN
    PRINT @Counter
    SET @Counter = @Counter + 1
END
          -- OR

 DECLARE @counter INT = 1;

WHILE @counter <= 50
BEGIN
    SELECT * 
    FROM (
        SELECT *,
               ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS RowNum
        FROM jomato
    ) AS numbered
    WHERE RowNum = @counter;

    SET @counter = @counter + 1;
END




5. Write a query to Create a Top rating view to store the generated top 5 highest rating of
restaurants.

CREATE VIEW TopRatingView AS
SELECT TOP 5 *
FROM JOMATO
ORDER BY rating DESC
select * from TopRatingView

6. Write a trigger that sends an email notification to the restaurant owner whenever a new
record is inserted

create trigger trig_aft90 on jomato
after insert
as begin
print 'Your record has been inserted in the table an email notification is sended to the restaurant owner'
end
insert into jomato values(7107,'jc koli biriyai','koli biriyani',4.00009876543,48,120,0,1,'Briyani,beverages,Indain','kanchipuram','KPM',59)
select * from jomato