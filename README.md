# Assignment_1
## ABC Fashion Sales Order Processing System

## Problem Statement

ABC Fashion is a leading retailer with a vast customer base and a team of dedicated sales representatives. They have a Sales Order Processing System that helps manage customer orders and interactions. The tasks below outline essential operations to be performed on their database.

## Dataset

The dataset and the script for the table creation and record insertion can be found [here](https://docs.google.com/document/d/1ngN7Q0Mpo8j5BXidNHGRHmgbMSuG5XcFYnp_gD3woL/edit?usp=sharing).

## Tasks to be Performed

### 1. Insert a New Record in Your Orders Table
- Write a SQL query to insert a new record into the `Orders` table.

### 2. Add Constraints to Salesman and Customer Tables
- Add a Primary Key constraint for the `SalesmanId` column in the `Salesman` table.
- Add a Default constraint for the `City` column in the `Salesman` table.
- Add a Foreign Key constraint for the `SalesmanId` column in the `Customer` table.
- Add a Not Null constraint in the `Customer_name` column for the `Customer` table.

### 3. Fetch Data Based on Conditions
- Retrieve all records where the Customer’s name ends with ‘N’ and the Purchase Amount is greater than 500.

### 4. Use SET Operators to Retrieve SalesmanId
- Retrieve unique `SalesmanId` values from two tables.
- Retrieve `SalesmanId` values with duplicates from two tables.

### 5. Display Matching Data
- Display the following columns for orders with a Purchase Amount between 500 and 1500:
  - `Orderdate`
  - `Salesman Name`
  - `Customer Name`
  - `Commission`
  - `City`

### 6. Use Right Join to Fetch All Results from Salesman and Order Tables
- Write a SQL query using a right join to fetch all results from the `Salesman` and `Order` tables.

## Instructions

1. Clone the repository to your local machine.
2. Review the SQL scripts in the `scripts/` folder.
3. Execute the scripts in your preferred SQL environment to perform the operations listed above.
   
# Assignment_2

## Jomato Data Analysis

## About the Dataset

You work for a data analytics company, and your client is a food delivery platform similar to Jomato. They have provided you with a dataset containing information about various restaurants in a city. Your task is to analyze this dataset using SQL queries to extract valuable insights and generate reports for your client.

## Tasks to be Performed

### 1. Create a User-Defined Function
- Create a user-defined function to insert the word "Chicken" into the term "Quick Bites," resulting in "Quick Chicken Bites."
- Use this function to display the restaurant name and cuisine type with the maximum number of ratings.

### 2. Create a Rating Status Column
- Create a `Rating Status` column to classify ratings as follows:
  - `Excellent`: More than 4 stars.
  - `Good`: Above 3.5 stars and below 5 stars.
  - `Average`: Above 3 stars and below 3.5 stars.
  - `Bad`: Below 3 stars.

### 3. Calculate Ceil, Floor, and Absolute Values
- Find the `Ceil`, `Floor`, and `Absolute` values of the `Rating` column.
- Display the current date and separately display the year, month name, and day.

### 4. Display Restaurant Type and Total Average Cost
- Use the `ROLLUP` function to display the restaurant type and total average cost.

## Instructions

1. Clone the repository to your local machine.
2. Review the SQL scripts in the `scripts/` folder.
3. Execute the scripts in your preferred SQL environment to perform the operations listed above.



.
