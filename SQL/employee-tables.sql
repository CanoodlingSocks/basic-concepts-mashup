CREATE DATABASE EmployeeDBTest;

-- Create a relational database for a tech company
-- Every employee has a unique id, first name and last name, a job title and a phonenumber.
-- Every employee can have multiple phonenumbers
-- Some employees may be a manager

CREATE TABLE Employees (
    Employee_id INT NOT NULL UNIQUE,
    First_name VARCHAR(50),
    Last_name VARCHAR(50),
    Job_title VARCHAR(50),
    PRIMARY KEY (Employee_id)
);

CREATE TABLE Phone (
    id INT NOT NULL AUTO_INCREMENT,
    Employee_id INT NOT NULL,
    Phone_number VARCHAR(20) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (Employee_id) references Employees(Employee_id)
);

CREATE TABLE Managers (
    Manager_id INT NOT NULL UNIQUE,
    PRIMARY KEY (Manager_id)
);

-- Every employee must belong to one department
-- A manager can manage more than one department

CREATE TABLE Departments (
    id INT NOT NULL PRIMARY KEY,
    Department_name VARCHAR(255) NOT NULL,
    Manager_id INT NOT NULL,
    FOREIGN KEY (Manager_id) REFERENCES Managers(Manager_id)
);

CREATE TABLE Employee_Department (
    Manager_id INT NOT NULL,
    Department_id INT NOT NULL,
    PRIMARY KEY (Manager_id, Department_id),
    FOREIGN KEY (Manager_id) REFERENCES Managers(Manager_id),
    FOREIGN KEY (Department_id) REFERENCES Departments(Department_id)
);

CREATE TABLE Manager_Department (
    Manager_id INT NOT NULL,
    Department_id INT NOT NULL,
    PRIMARY KEY (Manager_id, Department_id),
    FOREIGN KEY (Manager_id) REFERENCES Managers(Manager_id),
    FOREIGN KEY (Department_id) REFERENCES Departments(Department_id)
);

ALTER TABLE Employees
ADD Manager_id INT,
ADD FOREIGN KEY (Manager_id) REFERENCES Employees(Employee_id);