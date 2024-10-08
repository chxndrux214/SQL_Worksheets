create database casestudy1
use casestudy1

select * from fact
select * from Location
select * from Product
1. Display the number of states present in the LocationTable. 

built-in-function->max,min,sum,avg,count

select count(distinct state) as number_of_states from Location

2. How many products are of regular type?

select count(Type) as count from Product where Type='Regular'

3. How much spending has been done on marketing of product ID 1?
 
select sum(marketing) as sum from fact where productid=1

4. What is the minimum sales of a product?

select min(sales) as min_sales from fact

5. Display the max Cost of Good Sold (COGS).

select max(COGS) as "max cost of good sold" from fact

6. Display the details of the product where product type is coffee. 

select * from product where product_type='coffee'

7. Display the details where total expenses are greater than 40.

select * from fact where total_expenses>40

8. What is the average sales in area code 719?

select avg(sales) as average_sales from fact where area_code=719

9. Find out the total profit generated by Colorado state.

select sum(profit) as total_profit from fact inner join location on fact.area_code=location.area_code where state='colorado'

10.Display the average inventory for each product ID. 

select productid,avg(inventory) as average_inventory from fact group by productid order by productid

11. Display state in a sequential order in a Location Table.

select * from location order by state desc

select state from location order by state desc

12. Display the average budget of the Product where the average budget
margin should be greater than 100. 

select productid,avg(budget_margin) as avg_budget_margin from fact group by productid having avg(budget_margin)>100

13. What is the total sales done on date 2010-01-01?

select sum(sales) as total_sales from fact where date='2010-01-01'

14. Display the average total expense of each product ID on an individual date.

select productid,date,avg(total_expenses) as avg_tot_expenses from fact group by productid,date order by date,productid

15. Display the table with the following attributes such as date, productID, product_type, product, sales, profit, state, area_code.

select date,f.productid,p.productid,p.product_type,p.product,f.sales,f.profit,l.state,f.area_code from fact f inner join location l on f.productid=l.area_code inner join product p on f.productid=p.productid


16. Display the rank without any gap to show the sales wise rank.

SELECT concat(productid,profit,sales,margin,cogs,total_expenses,marketing,budget_cogs,budget_margin,budget_sales,area_code,
    
    RANK() OVER (ORDER BY sales DESC)) as sales_rank
FROM fact


17. Find the state wise profit and sales. 

select f.profit,f.sales from fact f
inner join location l on f.area_code=l.area_code group by l.state,f.profit,f.sales

18. Find the state wise profit and sales along with the productname. 

select f.profit,f.sales,p.product from fact f
inner join location l on f.area_code=l.area_code inner join product p on f.productid=p.productid group by l.state,f.profit,f.sales,p.product

19. If there is an increase in sales of 5%, calculate the increasedsales.

DECLARE @OriginalSales int = 1000 -- Example original sales value
DECLARE @IncreasedSales int = @OriginalSales * 1.05 -- Increased sales by 5%

SELECT ((@IncreasedSales - @OriginalSales) / @OriginalSales) * 100 AS IncreasedSalesPercentage

20. Find the maximum profit along with the product ID and producttype.
select * from fact
select * from Location
select * from Product

select max(f.profit) as max_profit,f.productid,p.product_type from fact f inner join product p on f.productid=p.productid
GROUP BY 
    f.productid,p.product_type


21. Create a stored procedure to fetch the result according to the product type from Product Table. 

create procedure res_123 
as
begin
select Type as res_123 from product
end

exec res_123


22. Write a query by creating a condition in which if the total expenses is lessthan 60 then it is a profit or else loss.

SELECT
    CASE
        WHEN Total_expenses < 60 THEN 'Profit'
        ELSE 'Loss'
    END AS Result
FROM
    fact


23. Give the total weekly sales value with the date and product IDdetails. Useroll-up to pull the data in hierarchical order. 

SELECT
  CASE
    WHEN DATEPART(wk, date) = DATEPART(wk, GETDATE()) AND 
         DATEPART(yyyy, date) = DATEPART(yyyy, GETDATE()) THEN 'This Week'
    ELSE FORMAT(date, 'yyyy-MM-dd')
  END AS week,
  productid,
  SUM(sales) AS total_weekly_sales
FROM fact
GROUP BY ROLLUP (date, productid)
ORDER BY week, productid



24. Apply union and intersection operator on the tables which consist of
attribute area code.

select area_code from fact
union
select area_code from location

select area_code from fact
intersect
select area_code from location

25. Create a user-defined function for the product table to fetch a particular
product type based upon the user�s preference. 

CREATE FUNCTION dbo.GetProductByType(@type varchar(50))
RETURNS TABLE
AS
RETURN
(
  SELECT *FROM Product WHERE Product_Type = @type
)

SELECT * FROM dbo.GetProductByType('Coffee')

26. Change the product type from coffee to tea where product ID is 1 and undo it. 

update product set product_type='tea' where productid=1 and product_type='coffee'
select * from product
update product set product_type='coffee' where productid=1 and product_type='tea'

27. Display the date, product ID and sales where total expenses are
between 100 to 200.

select date,productid from fact where total_expenses between 100 and 200

28. Delete the records in the Product Table for regular type.

delete from product where type='regular'
select * from product

29. Display the ASCII value of the fifth character from the columnProduct.

SELECT product,ASCII(SUBSTRING(product, 7, 1)) AS fifth_char_ascii
FROM product

