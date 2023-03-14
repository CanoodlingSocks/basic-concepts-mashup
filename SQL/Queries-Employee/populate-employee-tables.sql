USE EmployeeDBTest;
-- Add some employees and managers (OBS! The Department_id column needs to be added after updating Table Departments and then you can populate the new column with Data)
INSERT INTO Employees (Employee_id, First_name, Last_name, Job_title, Manager_id)
VALUES
  (1, 'Hanna', 'Smith', 'UX-Designer', NULL),
  (2, 'Cheryl', 'Vaanderlust', 'Lead-programmer', 1),
  (3, 'Thiago', 'Nkosi', 'Web Developer', NULL),
  (4, 'Hassan', 'Rooyen', 'Backend Engineer', 2),
  (5, 'Amelia', 'Park', '.Net Developer', NULL),
  (6, 'Aiden', 'Visser', 'HTML/CSS Developer', NULL),
  (7, 'James', 'Collins', 'Database Developer' 3),
  (8, 'Charlotte', 'Hernandez', 'PHP Developer' NULL),
  (9, 'Alejandro', 'Ortiz', 'UI-Designer', 4),
  (10, 'Lars', 'Nielsen', 'Frontend Developer', NULL);

-- Generate fake phonenumbers
SELECT 
    '('+CAST(ROUND(RAND()*899+100, 0) AS VARCHAR(3))+')'+
    CAST(ROUND(RAND()*899+100, 0) AS VARCHAR(3))+'-'+
    CAST(ROUND(RAND()*8999+1000, 0) AS VARCHAR(4)) AS phone_number
INTO #tmp_phone_numbers;

-- Add phonenumbers to all employees
INSERT INTO Phone (Employee_id, Phone_number)
SELECT 
    Employee_id, 
    (SELECT TOP 1 phone_number FROM #tmp_phone_numbers ORDER BY NEWID())
FROM Employees
WHERE Employee_id BETWEEN 1 AND 10;

-- Add another set of phonenumbers to all Managers
INSERT INTO Phone (Employee_id, Phone_number)
SELECT 
    Employee_id, 
    (SELECT TOP 1 phone_number FROM #tmp_phone_numbers ORDER BY NEWID())
FROM Employees
WHERE Employee_id IN (2, 4, 7, 9);

-- Add Departments //Error, need to add managers first before adding departments
INSERT INTO Managers (Manager_id) VALUES (1), (2), (3), (4);

INSERT INTO Departments (Department_id, Department_name, Manager_id)
VALUES 
  (1, 'Frontend Development', 4),
  (2, 'Backend Development', 2),
  (3, 'Full Stack Development', 1),
  (4, 'Quality Assurance', 3),

-- Add new column in Employees

ALTER TABLE Employees 
ADD Department_id INT;

-- Add Department Id values 1-4 to employees

-- FRONTEND
UPDATE Employees
SET Department_id = 1
WHERE Employee_id IN (1, 2, 3, 10);

-- BACKEND
UPDATE Employees
SET Department_id = 2
WHERE Employee_id IN (4, 5);

-- FULLSTACK
UPDATE Employees
SET Department_id = 3
WHERE Employee_id IN (6, 7);

-- QUALITY 
UPDATE Employees
SET Department_id = 4
WHERE Employee_id IN (8, 9);

