-- Create the database if it does not exist
CREATE DATABASE IF NOT EXISTS db01;

-- Use the newly created database
USE db01;

-- Create the worker table
CREATE TABLE IF NOT EXISTS worker (
    id INT PRIMARY KEY,                -- Primary key
    name VARCHAR(100),                 -- Variable character string for worker name
    joining_date DATE,                 -- Date of joining
    department VARCHAR(100)            -- Department name
);

-- Create the bonus table
CREATE TABLE bonus (
    worker_id INT,                     -- Foreign key referencing worker id
    bonus_amount DECIMAL(10, 2),       -- Bonus amount
    bonus_date DATE,                   -- Date when the bonus was given
    FOREIGN KEY (worker_id) REFERENCES worker(id)  -- Defining foreign key constraint
);

-- Create the title table
CREATE TABLE title (
    worker_id INT,                     -- Foreign key referencing worker id
    worker_title VARCHAR(100),         -- Worker title
    title_effective_from DATE,         -- Date from which the title is effective
    FOREIGN KEY (worker_id) REFERENCES worker(id)  -- Defining foreign key constraint
);


INSERT INTO worker (id, name, joining_date, department) VALUES
(1, 'Alice Johnson', '2020-01-15', 'HR'),
(2, 'Bob Smith', '2019-02-20', 'Finance'),
(3, 'Charlie Davis', '2018-03-25', 'IT'),
(4, 'Diana Evans', '2021-04-30', 'Marketing'),
(5, 'Ethan Brown', '2022-05-10', 'Sales'),
(6, 'Fiona Green', '2017-06-15', 'Operations'),
(7, 'George White', '2016-07-20', 'Logistics');

INSERT INTO bonus (worker_id, bonus_amount, bonus_date) VALUES
(1, 1000.00, '2021-12-20'),
(2, 1500.50, '2021-11-15'),
(3, 2000.75, '2021-10-10'),
(4, 2500.00, '2021-09-05'),
(5, 1800.80, '2021-08-01'),
(6, 2200.60, '2021-07-25'),
(7, 3000.00, '2021-06-15');

INSERT INTO title (worker_id, worker_title, title_effective_from) VALUES
(1, 'HR Manager', '2020-01-15'),
(2, 'Financial Analyst', '2019-02-20'),
(3, 'IT Specialist', '2018-03-25'),
(4, 'Marketing Coordinator', '2021-04-30'),
(5, 'Sales Representative', '2022-05-10'),
(6, 'Operations Supervisor', '2017-06-15'),
(7, 'Logistics Manager', '2016-07-20');

