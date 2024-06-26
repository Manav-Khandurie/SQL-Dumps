-- Drop existing tables if they exist
USE db01;

DROP TABLE IF EXISTS projects;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;

-- Create the departments table
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);

-- Create the employees table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    department_id INT,
    hire_date DATE,
    salary DECIMAL(10, 2),
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

-- Create the projects table
CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100) NOT NULL,
    employee_id INT,
    start_date DATE,
    end_date DATE,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

-- Insert data into the departments table
INSERT INTO departments (department_id, department_name) VALUES
(1, 'Finance'),
(2, 'HR'),
(3, 'IT'),
(4, 'Marketing'),
(5, 'Sales');

-- Insert data into the employees table
INSERT INTO employees (employee_id, employee_name, department_id, hire_date, salary) VALUES
(101, 'John Doe', 1, '2020-01-15', 60000.00),
(102, 'Jane Smith', 2, '2019-02-20', 65000.00),
(103, 'Michael Brown', 3, '2018-03-25', 70000.00),
(104, 'Laura White', 4, '2021-04-30', 75000.00),
(105, 'James Green', 1, '2022-05-10', 55000.00),
(106, 'Emily Davis', 2, '2020-06-15', 68000.00),
(107, 'David Wilson', 3, '2019-07-20', 72000.00),
(108, 'Susan Clark', 4, '2018-08-25', 76000.00),
(109, 'Robert Lewis', 5, '2021-09-30', 58000.00),
(110, 'Karen Walker', 1, '2022-10-05', 59000.00),
-- Adding some entries without department_id to create NULL scenarios
(111, 'Nancy Drew', NULL, '2021-11-01', 50000.00),
(112, 'Henry Ford', NULL, '2022-12-15', 52000.00);

-- Insert data into the projects table
INSERT INTO projects (project_id, project_name, employee_id, start_date, end_date) VALUES
(1001, 'Project Alpha', 101, '2021-01-01', '2021-06-30'),
(1002, 'Project Beta', 102, '2020-02-01', '2020-08-31'),
(1003, 'Project Gamma', 103, '2019-03-01', '2019-12-31'),
(1004, 'Project Delta', 104, '2021-04-01', '2021-09-30'),
(1005, 'Project Epsilon', 105, '2022-05-01', '2022-10-31'),
(1006, 'Project Zeta', 106, '2020-06-01', '2020-11-30'),
(1007, 'Project Eta', 107, '2019-07-01', '2020-01-31'),
(1008, 'Project Theta', 108, '2018-08-01', '2019-02-28'),
(1009, 'Project Iota', 109, '2021-09-01', '2022-03-31'),
(1010, 'Project Kappa', 110, '2022-10-01', '2023-03-31'),
-- Adding some entries without employee_id to create NULL scenarios
(1011, 'Project Lambda', NULL, '2021-11-01', '2022-04-30'),
(1012, 'Project Mu', NULL, '2022-12-15', '2023-05-15');



DESCRIBE departments;

SELECT * FROM departments;

DROP TABLE departments;


DESCRIBE projects;

SELECT * FROM projects;

DROP TABLE projects;


DESCRIBE employees;

SELECT * FROM employees;

DROP TABLE employees;