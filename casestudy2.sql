create database casestudy2
use casestudy2

create table location(location_id int,city varchar(255))
insert into location values
(122,'new york'),
(123,'dallas'),
(124,'chicago'),
(167,'boston')


create table Department
(
department_Id INT,
name varchar(255),
location_Id int
)
insert into  department values
(10,'Accounting',122),
(20,'Sales',124),
(30,'Research',123),
(40,'Operations',167)


create table job(job_id int,designation varchar(255))
insert into job values
(667,'clerk'),
(668,'staff'),
(669,'analyst'),
(670,'sales person'),
(671,'manager'),
(672,'president')

drop table employee
create table employee(Employee_id int,Last_Name varchar(255),First_name varchar(255),Middle_name varchar(255),Job_id int,Hire_Date Date ,Salary int, comm int,Department_id int)
INSERT INTO employee (Employee_id, Last_Name, First_name, Middle_name, Job_id, Hire_Date, Salary, Department_id)
VALUES (7369, 'Smith', 'John', 'Q', 667, '1984-12-17', 800, 20);
insert into  employee values 
(7499,'Allen','kevin','J',670,'20-feb-85',1800,300,30)
insert into employee (Employee_id, Last_Name, First_name, Middle_name, Job_id, Hire_Date, Salary, Department_id)values
(755,'Doyle','Jean','K',671,'04-apr-85',2850,30),
(756,'Dennis','Lynn','S',671,'15-May-85',2750,30) ,
(757,'Baker','Leslie','D',671,'22-feb-85',2200,40)
insert into  employee values 
(752,'Wark','cynthia','D',670,'22-feb-85',1250,50,30)



select * from location
select * from department
select * from job
select * from employee


Simple Queries:

1. List all the employee details. 
select * from employee

2. List all the department details. 
select * from department

3. List all job details. 
select * from job

4. List all the locations. 
select * from location

5. List out the First Name, Last Name, Salary, Commission for allEmployees.
select  first_name,last_name,salary,comm from employee

6. List out the Employee ID, Last Name, Department ID for all employees and
alias
Employee ID as "ID of the Employee", Last Name as "Name of the
Employee", Department ID as "Dep_id". 
select employee_id as 'id_of_the_employee',last_name as 'name_of_the_employee',department_id as 'dep_id' from employee

7. List out the annual salary of the employees with their names only.
select salary as 'annual_salary',concat (first_name,' ',last_name,' ',middle_name) as 'name' from employee


WHERE Condition:


1. List the details about "Smith". 

select * from employee where last_name='Smith'

2. List out the employees who are working in department 20. 

select concat(first_name,' ',last_name,' ',middle_name) as 'employees' from employee where department_id=20

3. List out the employees who are earning salaries between 3000 and 4500. 

select concat(first_name,' ',last_name,' ',middle_name) as 'employees',salary from employee where salary between 3000 and 4500

4. List out the employees who are working in department 10 or 20.

select concat(first_name,' ',last_name,' ',middle_name) as 'employees',department_id from employee where department_id=10 or department_id=20

5. Find out the employees who are not working in department 10 or 30. 

select concat(first_name,' ',last_name,' ',middle_name) as 'employees',department_id from employee where department_id!=10 and department_id!=30

6. List out the employees whose name starts with 'S'.

select concat(first_name,' ',last_name,' ',middle_name) as 'employees' from employee where first_name like 'S%' 

7. List out the employees whose name starts with 'S' and ends with 'H'.

select concat(first_name,' ',last_name,' ',middle_name) as 'employees' from employee where first_name like 'S%' and last_name like '%H'

8. List out the employees whose name length is 4 and start with 'S'. 

select concat(first_name,' ',last_name,' ',middle_name) as 'employees' from employee where len(first_name)=4 and first_name like 'S%'

9. List out employees who are working in department 10 and draw salaries more
than 3500. 

select concat(first_name,' ',last_name,' ',middle_name) as 'employees',department_id from employee where department_id=10 and salary>3500

10. List out the employees who are not receiving commission

select concat(first_name,' ',last_name,' ',middle_name) as 'employees',comm from employee where comm is NULL


ORDER BY Clause:


1. List out the Employee ID and Last Name in ascending order based on the
Employee ID. 

select employee_id,last_name from employee order by employee_id

2. List out the Employee ID and Name in descending order based on salary.

select employee_id,concat(first_name,' ',last_name,' ',middle_name) as 'employees',salary from employee order by salary desc

3. List out the employee details according to their Last Name in ascending-order.

select * from employee order by last_name

4.List out the employee details according to their Last Name in ascending order and then Department ID in desc

select * from employee order by last_name asc
select * from employee order by department_id desc


GROUP BY and HAVING Clause:


select * from location --concat(first_name,' ',last_name,' ',middle_name) as 'employees'
select * from department
select * from job
select * from employee
1. How many employees are in different departments in the organization?

select concat(first_name,' ',last_name,' ',middle_name) as 'employees' 

2. List out the department wise maximum salary, minimum salary and average salary of the employees.

select department_id,max(salary) as max_salary,min(salary) as min_salary,avg(salary) as avg_salary from employee group by department_id 

3. List out the job wise maximum salary, minimum salary and average
salary of the employees. 

select j.job_id,max(e.salary) as max_salary,min(e.salary) as min_salary,avg(e.salary) as avg_salary from employee e inner join job j on e.job_id=j.job_id group by j.job_id

4. List out the number of employees who joined each month in ascending order.

SELECT 
    MONTH(hire_Date) AS JoinMonth,
    COUNT(*) AS NumberOfEmployeesJoined
FROM 
    Employee
GROUP BY 
     MONTH(hire_Date)
ORDER BY 
     JoinMonth ASC


5. List out the number of employees for each month and year in
ascending order based on the year and month. 

select year(hire_date) as join_year,month(hire_date) as join_month,count(*) as no_of_emp_joined from employee group by year(hire_date),month(hire_date) order by join_year asc,join_month asc

6. List out the Department ID having at least four employees.

select department_id from employee group by department_id having count(*) >=4

7. How many employees joined in the month of January?

select count(*) as no_of_emp_joined from employee where month(hire_date)=1

8. How many employees joined in the month of January or September?

select count(*) as no_of_emp_joined from employee where month(hire_date)=1 or month(hire_date)=9

9. How many employees joined in 1985?

select count(*) as no_of_emp_joined from employee where year(hire_date)=1985

10. How many employees joined each month in 1985?

select month(hire_date) as join_month,count(*) as no_of_emp_joined from employee where year(hire_date)=1985 group by month(hire_date)

11. How many employees joined in March 1985?

select count(*) as no_of_emp_joined from employee where month(hire_date)=3 and year(hire_date)=1985

12. Which is the Department ID having greater than or equal to 3 employees
joining in April 1985?

select department_id from employee  where month(hire_date)=4 and year(hire_date)=1985 group by department_id having count(*) >= 3



Joins:

select * from location
select * from department
select * from job
select * from employee

1. List out employees with their department names. 

select concat(first_name,' ',last_name,' ',middle_name) as 'employees',d.name from employee e
inner join department d on e.department_id=d.department_id 
inner join job j on j.job_id=e.job_id


2. Display employees with their designations. 

select concat(first_name,' ',last_name,' ',middle_name) as 'employees',j.designation from employee e
inner join department d on e.department_id=d.department_id 
inner join job j on j.job_id=e.job_id

3. Display the employees with their department names and regional groups.

select concat(first_name,' ',last_name,' ',middle_name) as 'employees',d.name,j.designation from employee e
inner join department d on e.department_id=d.department_id 
inner join job j on j.job_id=e.job_id

4. How many employees are working in different departments? Display with
department names

SELECT d.name, COUNT(e.employee_id) AS num_employees
FROM department d
INNER JOIN employee e ON d.department_id = e.department_id
GROUP BY d.name


5. How many employees are working in the sales department?

select count(e.employee_id) as num_employees from employee e inner join department d on e.department_id=d.department_id where d.name='sales'

6. Which is the department having greater than or equal to 5
employees? Display the department names in ascending
order.

select d.name from department d inner join employee e on d.department_id=e.department_id group by d.name having count(e.department_id) >=5 order by d.name asc 

7. How many jobs are there in the organization? Display with designations. 

select count(j.job_id) as job_count,j.designation from employee e inner join job j on e.job_id=j.job_id group by j.designation

8. How many employees are working in "New York"?

SELECT COUNT(*) AS Employee_Count
FROM employee e
INNER JOIN department d ON e.department_id = d.department_id
INNER JOIN location l ON d.location_id = l.location_id
WHERE l.city = 'New York'


9. Display the employee details with salary grades. Use conditional statementto
create a grade column. 

SELECT 
    CONCAT(First_name, ' ', Last_name,' ',middle_name) AS Employee_Name,
    Salary,
    CASE
        WHEN Salary >= 2750 THEN 'Grade A'
        WHEN Salary >= 1800 THEN 'Grade B'
        WHEN Salary >= 1250 THEN 'Grade C'
        ELSE 'Grade D'
    END AS Grade
FROM 
    employee


10. List out the number of employees grade wise. Use conditional statement to
create a grade column.

SELECT 
    CASE
        WHEN Salary >= 2750 THEN 'Grade A'
        WHEN Salary >= 1800 THEN 'Grade B'
        WHEN Salary >= 1250 THEN 'Grade C'
        ELSE 'Grade D'
    END AS Grade,
    COUNT(*) AS Employee_Count
FROM 
    employee
GROUP BY 
    CASE
        WHEN Salary >= 2750 THEN 'Grade A'
        WHEN Salary >= 1800 THEN 'Grade B'
        WHEN Salary >= 1250 THEN 'Grade C'
        ELSE 'Grade D'
    END


11.Display the employee salary grades and the number of employees
between 2000 to 5000 range of salary.

SELECT
    CASE
        WHEN Salary >= 2750 THEN 'Grade A'
        WHEN Salary >= 1800 THEN 'Grade B'
        WHEN Salary >= 1250 THEN 'Grade C'
        ELSE 'Grade D'
    END AS Grade,
    COUNT(*) AS Employee_Count
FROM 
    employee
WHERE
    Salary BETWEEN 2000 AND 5000
GROUP BY 
    CASE
        WHEN Salary >= 2750 THEN 'Grade A'
        WHEN Salary >= 1800 THEN 'Grade B'
        WHEN Salary >= 1250 THEN 'Grade C'
        ELSE 'Grade D'
    END


12.Display all employees in sales or operation departments. 

SELECT 
    e.*,j.designation
FROM 
    employee e
inner join
    department d ON e.Department_id = d.Department_id inner join job j on j.job_id=e.employee_id
WHERE 
    d.Name IN ('Sales','operations')


SET Operators:

select * from location
select * from department
select * from job
select * from employee


1. List out the distinct jobs in sales and accounting departments.

SELECT DISTINCT j.designation
FROM job j
inner JOIN employee e ON e.job_id = j.job_id
inner JOIN department d ON e.department_id = d.department_id
where d.name IN ('Sales', 'Accounting') -- Assuming 30 is the department ID for Sales and 40 is for Accounting


2. List out all the jobs in sales and accounting departments.

select j.designation from job j 
inner join employee e on j.job_id=e.job_id 
inner join department d on e.department_id=d.department_id 
where d.name in ('sales','accounting')

3. List out the common jobs in research and accounting
departments in ascending order. 

select distinct j.designation from job j 
inner join employee e on e.job_id=j.job_id 
inner join department d on d.department_id=e.department_id 
where d.name in ('accounting','research') order by j.designation asc


Subqueries:

select * from location
select * from department
select * from job
select * from employee

1. Display the employees list who got the maximum salary.


SELECT
    Employee_ID,
    concat(First_Name,' ',Last_Name,' ',middle_name) as name,
    Salary
FROM Employee
WHERE Salary = (SELECT MAX(Salary) FROM Employee)


2. Display the employees who are working in the sales department.

SELECT 
    Employee_ID,
    First_Name,
    Last_Name,
    Department_ID
FROM Employee
WHERE Department_ID = ( SELECT Department_ID FROM Department WHERE Name = 'Sales')

3. Display the employees who are working as 'Clerk'. 

SELECT 
    Employee_ID,
    First_Name,
    Last_Name,
    Department_ID
FROM Employee
WHERE job_ID = ( SELECT job_ID FROM job WHERE designation = 'clerk')

4. Display the list of employees who are living in "New York". 

SELECT Employee_id, First_Name, Last_Name
FROM employee
WHERE Department_id IN (SELECT department_Id FROM Department
WHERE location_Id IN (SELECT location_id FROM location
WHERE city = 'new york'))


5. Find out the number of employees working in the sales department. 

SELECT Employee_id, First_Name, Last_Name
FROM employee where department_id in(select department_id from department where name='sales')


6. Update the salaries of employees who are working as clerks on the basis of 10%.

UPDATE employee
SET Salary = Salary * 1.1
WHERE Job_id = (
    SELECT job_id
    FROM job
    WHERE designation = 'clerk'
)
select * from employee

7. Delete the employees who are working in the accounting department. 

delete FROM employee 
where department_id =(select department_id from department where name='accounting')
select * from employee

8. Display the second highest salary drawing employee details. 

SELECT * FROM employee
WHERE Salary = (SELECT MAX(Salary) FROM employee
    WHERE Salary < (SELECT MAX(Salary) FROM employee))

9. Display the nth highest salary drawing employee details.

SELECT *
FROM (
    SELECT *,
           ROW_NUMBER() OVER (ORDER BY Salary DESC) AS rank
    FROM employee
) AS ranked_employees
WHERE rank = 1 

SELECT *
FROM (
    SELECT *,
           ROW_NUMBER() OVER (ORDER BY Salary DESC) AS rank
    FROM employee
) AS ranked_employees
WHERE rank = 2

SELECT *
FROM (
    SELECT *,
           ROW_NUMBER() OVER (ORDER BY Salary DESC) AS rank
    FROM employee
) AS ranked_employees
WHERE rank = 3

SELECT *
FROM (
    SELECT *,
           ROW_NUMBER() OVER (ORDER BY Salary DESC) AS rank
    FROM employee
) AS ranked_employees
WHERE rank = 4

SELECT *
FROM (
    SELECT *,
           ROW_NUMBER() OVER (ORDER BY Salary DESC) AS rank
    FROM employee
) AS ranked_employees
WHERE rank = 5

SELECT *
FROM (
    SELECT *,
           ROW_NUMBER() OVER (ORDER BY Salary DESC) AS rank
    FROM employee
) AS ranked_employees
WHERE rank = 6


10. List out the employees who earn more than every employee in department 30.

SELECT * FROM employee e
WHERE Salary > (SELECT MAX(Salary) FROM employee
WHERE Department_id = 30)

11. List out the employees who earn more than the lowest salary in department.Find out whose department has no employees. 

SELECT top(1) * FROM employee e
WHERE Salary > (SELECT MIN(Salary) FROM employee
WHERE Department_id = e.Department_id)
SELECT department_Id, name AS department_name
FROM Department
WHERE department_Id NOT IN (
    SELECT Department_id
    FROM employee)

12. Find out which department has no employees. 

SELECT department_Id, name AS department_name
FROM Department
WHERE department_Id NOT IN (
    SELECT DISTINCT Department_id
    FROM employee)


13. Find out the employees who earn greater than the average salary for their department

SELECT top(1) * FROM employee e
WHERE Salary > (SELECT avg(Salary) FROM employee
WHERE Department_id = e.Department_id)