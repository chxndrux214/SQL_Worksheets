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

# Assignment 3

## Jomato Data Analysis

## About the Dataset

You work for a data analytics company, and your client is a food delivery platform similar to Jomato. They have provided you with a dataset containing information about various restaurants in a city. Your task is to analyze this dataset using SQL queries to extract valuable insights and generate reports for your client.

## Tasks to be Performed

### 1. Create a User-Defined Function
- Develop a user-defined function to insert the word "Chicken" into the term "Quick Bites," transforming it into "Quick Chicken Bites."
- Utilize this function to display the restaurant name and cuisine type with the maximum number of ratings.

### 2. Create a Rating Status Column
- Introduce a `Rating Status` column to classify ratings based on the following criteria:
  - **Excellent**: Ratings above 4 stars.
  - **Good**: Ratings between 3.5 and 4 stars.
  - **Average**: Ratings between 3 and 3.5 stars.
  - **Bad**: Ratings below 3 stars.

### 3. Calculate Ceil, Floor, and Absolute Values
- Compute the `Ceil`, `Floor`, and `Absolute` values for the `Rating` column.
- Additionally, display the current date, and separately show the year, month name, and day.

### 4. Display Restaurant Type and Total Average Cost
- Implement the `ROLLUP` function to display the restaurant type along with the total average cost.

## Instructions

1. Clone the repository to your local machine.
2. Navigate to the `scripts/` folder and review the SQL scripts provided.
3. Execute the scripts in your preferred SQL environment to carry out the tasks outlined above.

# Casestudy_2

## Employee Data Analysis

## About the Dataset

This repository contains a series of SQL queries aimed at analyzing employee data. The dataset includes information about employees, departments, jobs, and locations. The goal is to practice SQL operations such as data retrieval, filtering, sorting, grouping, joining, and subqueries to extract meaningful insights.

## SQL Queries

### Simple Queries
1. **List all the employee details.**
2. **List all the department details.**
3. **List all job details.**
4. **List all the locations.**
5. **List out the First Name, Last Name, Salary, Commission for all Employees.**
6. **Alias Query:** List out Employee ID, Last Name, Department ID with custom column names.
7. **Annual Salary Calculation:** List out the annual salary of the employees with their names only.

### WHERE Condition
1. **Employee Search:** List the details about "Smith".
2. **Department Filter:** List out the employees who are working in department 20.
3. **Salary Range:** List out the employees who are earning salary between 2000 and 3000.
4. **Multiple Departments:** List out the employees who are working in department 10 or 20.
5. **Exclusion Condition:** Find out the employees who are not working in department 10 or 30.
6. **Name Pattern:** List out the employees whose name starts with 'L'.
7. **Name Start and End Pattern:** List out the employees whose name starts with 'L' and ends with 'E'.
8. **Name Length and Pattern:** List out the employees whose name length is 4 and starts with 'J'.
9. **Department and Salary Filter:** List out the employees who are working in department 30 and draw the salaries more than 2500.
10. **Commission Status:** List out the employees who are not receiving commission.

### ORDER BY Clause
1. **Ascending Order by ID:** List out the Employee ID and Last Name in ascending order based on the Employee ID.
2. **Descending Order by Salary:** List out the Employee ID and Name in descending order based on salary.
3. **Ascending Order by Last Name:** List out the employee details according to their Last Name in ascending order.
4. **Multi-Level Sorting:** List out the employee details according to their Last Name in ascending order and then Department ID in descending order.

### GROUP BY and HAVING Clause
1. **Department Salary Statistics:** List out the department-wise maximum salary, minimum salary, and average salary of the employees.
2. **Job Salary Statistics:** List out the job-wise maximum salary, minimum salary, and average salary of the employees.
3. **Monthly Joins:** List out the number of employees who joined each month in ascending order.
4. **Year and Month Joins:** List out the number of employees for each month and year in ascending order based on the year and month.
5. **Employee Count by Department:** List out the Department ID having at least four employees.
6. **February Joins:** How many employees joined in February month.
7. **May/June Joins:** How many employees joined in May or June month.
8. **1985 Joins:** How many employees joined in 1985?
9. **Monthly Joins in 1985:** How many employees joined each month in 1985?
10. **April 1985 Joins:** How many employees were joined in April 1985?
11. **Department Joins in April 1985:** Which is the Department ID having greater than or equal to 3 employees joining in April 1985?

### Joins
1. **Employees with Department Names:** List out employees with their department names.
2. **Employees with Designations:** Display employees with their designations.
3. **Employees with Department Names and City:** Display the employees with their department names and city.
4. **Employee Count by Department:** How many employees are working in different departments? Display with department names.
5. **Sales Department Count:** How many employees are working in the sales department?
6. **Departments with Multiple Employees:** Which is the department having greater than or equal to 3 employees and display the department names in ascending order?
7. **Employees in Dallas:** How many employees are working in 'Dallas'?
8. **Sales or Operations Department:** Display all employees in sales or operation departments.

### Conditional Statement
1. **Employee Salary Grades:** Display the employee details with salary grades. Use a conditional statement to create a grade column.
2. **Grade-wise Employee Count:** List out the number of employees grade-wise. Use a conditional statement to create a grade column.
3. **Salary Grades within a Range:** Display the employee salary grades and the number of employees between 2000 to 5000 range of salary.

### Subqueries
1. **Maximum Salary:** Display the employees who got the maximum salary.
2. **Sales Department Employees:** Display the employees who are working in the sales department.
3. **Clerk Employees:** Display the employees who are working as 'Clerk'.
4. **Boston Residents:** Display the list of employees who are living in 'Boston'.
5. **Sales Department Count:** Find out the number of employees working in the sales department.
6. **Update Clerk Salaries:** Update the salaries of employees who are working as clerks by 10%.
7. **Second Highest Salary:** Display the second highest salary drawing employee details.
8. **Earnings Comparison:** List out the employees who earn more than every employee in department 30.
9. **Departments without Employees:** Find out which department has no employees.
10. **Above Average Salary:** Find out the employees who earn greater than the average salary for their department.

## Instructions

1. Clone the repository to your local machine using the command:
   ```bash
   git clone <repository-url>





.
