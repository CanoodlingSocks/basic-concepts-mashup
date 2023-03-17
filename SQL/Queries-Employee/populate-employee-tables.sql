USE EmployeeDBTest;

-- Populate Employee Table with Data
INSERT INTO Employees (Employee_id, First_name, Last_name, Job_title)
VALUES
  (1, 'Hanna', 'Smith', 'UX-Designer'),
  (2, 'Cheryl', 'Vaanderlust', 'Lead-programmer'),
  (3, 'Thiago', 'Nkosi', 'Web Developer'),
  (4, 'Hassan', 'Rooyen', 'Backend Engineer'),
  (5, 'Amelia', 'Park', '.Net Developer'),
  (6, 'Aiden', 'Visser', 'HTML/CSS Developer'),
  (7, 'James', 'Collins', 'Database Developer'),
  (8, 'Charlotte', 'Hernandez', 'PHP Developer'),
  (9, 'Alejandro', 'Ortiz', 'UI-Designer'),
  (10, 'Lars', 'Nielsen', 'Frontend Developer');

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

-- Add Managers

INSERT INTO Managers (Employee_id, Manager_id)
VALUES (9, 1), (4, 2), (2, 3), (7, 4)

-- Add Departments 

INSERT INTO Departments (Department_id, Department_name, Manager_id)
VALUES 
  (1, 'Frontend Development', 1),
  (2, 'Backend Development', 2),
  (3, 'Full Stack Development', 3),
  (4, 'Quality Assurance', 4);

-- Add Department Id values 1-4 to employees

-- You could add them directly when inserting the
-- data to the Employee table, but I find it 
-- easier to visualise who goes where by manually
-- updating it like this ;-))

-- FRONTEND DEV TEAM
UPDATE Employees
SET Department_id = 1
WHERE Employee_id IN (1, 8, 3, 9);

-- BACKEND DEV TEAM
UPDATE Employees
SET Department_id = 2
WHERE Employee_id IN (4, 5);

-- FULLSTACK DEV TEAM
UPDATE Employees
SET Department_id = 3
WHERE Employee_id IN (6, 2);

-- QUALITY ASSURANCE TEAM
UPDATE Employees
SET Department_id = 4
WHERE Employee_id IN (7, 10);
