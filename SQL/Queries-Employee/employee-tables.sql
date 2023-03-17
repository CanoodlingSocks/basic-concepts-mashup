CREATE DATABASE EmployeeDBTest;
USE EmployeeDBTest;

-- Create a relational database for a tech company
-- Every employee has a unique id, first name and last name, a job title and a phonenumber.
-- Every employee can have multiple phonenumbers

CREATE TABLE Employees (
  Employee_id INT PRIMARY KEY,
  First_name VARCHAR(50),
  Last_name VARCHAR(50),
  Job_title VARCHAR(50)
);

CREATE TABLE Phone (
    id INT NOT NULL IDENTITY(1,1),
    Employee_id INT NOT NULL,
    Phone_number VARCHAR(20) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (Employee_id) references Employees(Employee_id)
);

-- Some employees may be a manager
CREATE TABLE Managers (
  Manager_id INT PRIMARY KEY,
  Employee_id INT,
  FOREIGN KEY (Employee_id) REFERENCES Employees(Employee_id)
);

-- OBS! A manager can manage more than one department

CREATE TABLE Departments (
  Department_id INT PRIMARY KEY,
  Department_name VARCHAR(50),
  Manager_id INT,
  FOREIGN KEY (Manager_id) REFERENCES Managers(Manager_id)
);

-- Every employee must belong to one department
ALTER TABLE Employees
ADD Department_id INT;

ALTER TABLE Employees
ADD FOREIGN KEY (Department_id) REFERENCES Departments(Department_id);