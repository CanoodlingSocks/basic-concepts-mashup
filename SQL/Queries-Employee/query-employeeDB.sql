USE EmployeeDBTest;

-- 1. Write a query that joins the Departments table with the Employees table and outputs a table with: Department Id, Department Name and First + Lastname of the Manager of that Department

SELECT d.Department_id, d.Department_name, CONCAT(m.First_name, ' ', m.Last_name) AS Manager
FROM Departments d
INNER JOIN Employees m ON d.Manager_id = m.Employee_id

-- The Departments table get joined with the Employees table on the Manager_id column and then gets joined with the Employees table again to get the manager's first and last name by using the 'CONCAT' function to concatenate the first and last name columns inta a single string.

-- 2. Write a query that displays all employee names (both first and lastname) and their phonenumbers

SELECT CONCAT(First_name, ' ', Last_name) AS Name, Phone_number
FROM Employees
LEFT JOIN Phone ON Employees.Employee_id = Phone.Employee_id
ORDER BY Name ASC;

-- By using the keyword AS we can also use the result to order it by Name in an ASCending order so that it looks a little bit more neat, especially if an employee has more than one phonenumber