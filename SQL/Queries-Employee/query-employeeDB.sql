USE EmployeeDBTest;

-- 1. Write a query that joins the Departments table with the Employees table and outputs a table with: Department Id, Department Name and First + Lastname of the Manager of that Department

SELECT d.Department_id, d.Department_name, CONCAT(e.First_name, ' ', e.Last_name) AS Manager_name
FROM Departments d
INNER JOIN Managers m ON d.Manager_id = m.Manager_id
INNER JOIN Employees e ON m.Employee_id = e.Employee_id
ORDER BY d.Department_id;

-- The Departments table get joined with the Managers table on the Manager_id column and then gets joined with the Employees table on m.Employee_id to get the manager's first and last name and by using the 'CONCAT' function, we can concatenate the first and last name columns into a single string.

-- 2. Write a query that displays all employee names (both first and lastname) and their phonenumbers

SELECT CONCAT(First_name, ' ', Last_name) AS Name, Phone_number
FROM Employees
LEFT JOIN Phone ON Employees.Employee_id = Phone.Employee_id
ORDER BY Name ASC;

-- By using the keyword AS we can also use the result to order it by Name in an ASCending order so that it looks a little bit more neat, especially if an employee has more than one phonenumber

-- 3. Write a query that display first letter of the firstname for every employee, followed by a '.' and lastname and the name of the department they belong to, sorted by Department name

SELECT LEFT(First_name, 1) + '. ' + Last_name AS Employee_Name,
       D.Department_name AS Department_Name
FROM Employees E
INNER JOIN Departments D ON E.Department_id = D.Department_id
ORDER BY Department_Name;

-- Selects from the Left First.Name at the index of '1' - concatenates with '. ' <-- Some spacing so it looks better and then appends the last name AS Employee_Name. Then gets the Department name column from the Department table and using an INNER JOIN with the employees table on the department id. And finally we sort the result by the Department name

-- 4. Write a query that counts how many people belong to one department and order by highest count

SELECT Departments.Department_name, COUNT(*) as Employee_count
FROM Employees
INNER JOIN Departments ON Employees.Department_id = Departments.Department_id
GROUP BY Departments.Department_name
ORDER BY Employee_count DESC

-- Select Departments table and the name and use the COUNT(*) function. Inner join Departments table with Employees table on Department_id. Group by Department Name and lastly add the result from COUNT in a DESCending order (highest first)