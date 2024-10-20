-- **************************************************
-- First we are going to create a table for employees.
-- ************************************************** 

-- create table employees(
-- 	EmplID Serial Primary Key,
-- 	DisplayName Text Not Null,
-- 	UserPrincipalName TEXT NOT NULL,
-- 	UserPhoneNumber TEXT,
--     ManagerID INTEGER 
-- )

-- -- ******************************************************************************
-- -- ** Now we are going to insert some data in our newly created employee table **
-- -- ******************************************************************************

-- INSERT INTO employees (DisplayName, UserPrincipalName, UserPhoneNumber, ManagerID)
-- VALUES
-- 	   ('Elizabeth Bartlett', 'qtaylor@example.com', '1-725-877-4110', 9088),
--        ('Jason Mendoza', 'kristen81@example.com', '1-768-708-2152', 1939),
--        ('Philip Rodriguez', 'hlevy@example.org', '950-557-5717', 7226),
--        ('John Campbell', 'tonyamolina@example.org', '(306)843-7246', 9088),
-- 		 ('Glenn Odom', 'robert91@example.net', '4602803271', NULL ),
-- 		 ('Jimmy Kemp', 'jenkinskirsten@example.org', '560.370.7340', NULL );

-- -- ***************************************************************************************
-- -- As we move further we need another table which contains the data of employees managers.
-- -- ***************************************************************************************

-- create table managers(
-- 	ManagerID INTEGER,
-- 	DisplayName Text Not Null,
-- 	UserPrincipalDepartment TEXT NOT NULL
-- );

-- INSERT INTO managers (ManagerID, DisplayName, UserPrincipalDepartment)
-- VALUES
-- (9088, 'Richard Hill', 'Finance'),
-- (1939, 'Brittany Wyatt', 'Humman Resoruce'),
-- (2476, 'Nancy Best', 'PMO');

-- -- ***************************************
-- -- Simple Query to Check Our Table Content
-- -- ***************************************

-- select * From employees		 		

-- -- ***********************************
-- -- Select Only Null / Not Null Records
-- -- ***********************************

-- select * From employees	where managerid is NULL	 		
-- select * From employees	where managerid is Not NULL	

-- -- ********************************************************************
-- -- ** Check the with order by mangerid (we use column number here) 
-- -- ** In large tables we can use count function to check for duplicates.
-- -- ********************************************************************

-- -- We are using column number here managerid which is 5
-- Select * From employees Order by 5
-- Select ManagerID , count(ManagerID) as TotalEmployees From employees group by ManagerID


-- -- *******************************************************************************************
-- -- SQL has a very useful operator IN Which helps us to filter the data accoriding to our list.
-- -- *******************************************************************************************

-- Select * From employees where managerid in (9088)

-- -- *******************************************************************************************
-- -- This is the example of Sub Query where in Where Clause we use the output of another query.
-- -- *******************************************************************************************

-- select displayname From employees where managerid in (select distinct managerid from employees)


-- -- *****************************************************************************
-- -- Lets do some joins We need to create a report of Employees and their managers.
-- -- *****************************************************************************

-- SELECT *
-- FROM employees
-- INNER JOIN managers ON employees.ManagerID = managers.ManagerID;

-- -- It removes the Nulls
-- -- What we need is all employees including NULL
-- -- Now we will tell SQL what we need.

-- SELECT *
-- FROM employees
-- LEFT JOIN managers ON employees.ManagerID = managers.ManagerID;

-- You can apply same logic for right joins to brings managers first then employees.
