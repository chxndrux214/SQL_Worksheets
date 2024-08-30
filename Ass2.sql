create database jomoto
use jomoto
select * from jomato

1)Create a user-defined functions to stuff the Chicken into‘Quick Bites’.Eg: ‘Quick Chicken Bites’.
CREATE FUNCTION dbo.StuffChickenIntoQuickBites (@cuisine NVARCHAR(500))
RETURNS NVARCHAR(500)
AS
BEGIN
    DECLARE @result VARCHAR(500)
    IF @cuisine LIKE '%Chicken%' 
        SET @result = REPLACE(@cuisine, 'Chicken', 'Quick Chicken')
    ELSE
        SET @result = @cuisine
    
    RETURN @result
END
SELECT dbo.StuffChickenIntoQuickBites(cuisinestype) AS modified_cuisine
FROM jomato

2)Use the function to display the restaurant name and cuisine type which has the maximum number of rating.
SELECT TOP 1 restaurantname, cuisinestype
FROM jomato
ORDER BY no_of_rating DESC

3)Create a Rating Status column to display the rating as ‘Excellent’ if it has more the 4
star rating, ‘Good’ if it has above 3.5 and below 5 star rating, ‘Average’ if it is above 3
and below 3.5 and ‘Bad’ if it is below 3 star rating
alter table jomato add ratingstatus varchar(255)
update jomato
SET ratingstatus = 
    CASE
        WHEN rating > 4 THEN 'Excellent'
        WHEN rating > 3.5 THEN 'Good'
        WHEN rating > 3 THEN 'Average'
        ELSE 'Bad'
    END

4)Find the Ceil,floor and absolute values of the rating column and display the current date and separately display the year,month_name and day

SELECT
    restaurantname,
    rating,
    CEILING(rating) AS ceil_rating,
    FLOOR(rating) AS floor_rating,
    ABS(rating) AS absolute_rating,
    datename(day,getdate()) AS currentdate,
    datename(year,getdate()) AS current_year,
    DATENAME(MONTH, GETDATE()) AS current_month_name,
    datename(WEEKDAY,GETDATE()) AS current_day
		from jomato


5)Display the restaurant type and total average cost using rollup

SELECT
    restaurantType,
    AVG(averageCost) AS total_average_cost
FROM
    jomato
GROUP BY
    ROLLUP(restaurantType)