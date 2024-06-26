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
DESCRIBE  TABLE bonus;

-- Create the title table
CREATE TABLE title (
    worker_id INT,                     -- Foreign key referencing worker id
    worker_title VARCHAR(100),         -- Worker title
    title_effective_from DATE,         -- Date from which the title is effective
    FOREIGN KEY (worker_id) REFERENCES worker(id)  -- Defining foreign key constraint
);


-- Insert data into worker table
INSERT INTO worker (id, name, joining_date, department) VALUES
(1, 'Alice Johnson', '2020-01-15', 'HR'),
(2, 'Bob Smith', '2019-02-20', 'Finance'),
(3, 'Charlie Davis', '2018-03-25', 'IT'),
(4, 'Diana Evans', '2021-04-30', 'Marketing'),
(5, 'Ethan Brown', '2022-05-10', 'Sales'),
(6, 'Fiona Green', '2017-06-15', 'Operations'),
(7, 'George White', '2016-07-20', 'Logistics'),
(8, 'Hannah Lee', '2020-08-25', 'HR'),
(9, 'Ian Black', '2019-09-30', 'Finance'),
(10, 'Jack Wilson', '2018-10-05', 'IT'),
(11, 'Kelly Taylor', '2021-11-10', 'Marketing'),
(12, 'Laura Harris', '2022-12-15', 'Sales'),
(13, 'Mason Clark', '2017-01-20', 'Operations'),
(14, 'Nina Adams', '2016-02-25', 'Logistics'),
(15, 'Oliver Scott', '2020-03-30', 'HR'),
(16, 'Paul King', '2019-04-05', 'Finance'),
(17, 'Quinn Young', '2018-05-10', 'IT'),
(18, 'Rachel Hall', '2021-06-15', 'Marketing'),
(19, 'Sam Mitchell', '2022-07-20', 'Sales'),
(20, 'Tina Baker', '2017-08-25', 'Operations'),
(21, 'Uma Nelson', '2016-09-30', 'Logistics'),
(22, 'Victor Moore', '2020-10-05', 'HR'),
(23, 'Wendy Perez', '2019-11-10', 'Finance'),
(24, 'Xander Reed', '2018-12-15', 'IT'),
(25, 'Yara Cruz', '2021-01-20', 'Marketing'),
(26, 'Zachary Long', '2022-02-25', 'Sales'),
(27, 'Alice Johnson', '2020-01-15', 'HR'),    -- Redundant entry
(28, 'Bob Smith', '2019-02-20', 'Finance'),   -- Redundant entry
(29, 'Charlie Davis', '2018-03-25', 'IT'),    -- Redundant entry
(30, 'Diana Evans', '2021-04-30', 'Marketing'), -- Redundant entry
(31, 'Ethan Brown', '2022-05-10', 'Sales'),   -- Redundant entry
(32, 'Fiona Green', '2017-06-15', 'Operations'), -- Redundant entry
(33, 'George White', '2016-07-20', 'Logistics'), -- Redundant entry
(34, 'Hannah Lee', '2020-08-25', 'HR'),       -- Redundant entry
(35, 'Ian Black', '2019-09-30', 'Finance'),   -- Redundant entry
(36, 'Jack Wilson', '2018-10-05', 'IT');      -- Redundant entry


INSERT INTO bonus (worker_id, bonus_amount, bonus_date) VALUES
(1, 1000.00, '2021-12-20'),
(2, 1500.50, '2021-11-15'),
(3, 2000.75, '2021-10-10'),
(4, 2500.00, '2021-09-05'),
(5, 1800.80, '2021-08-01'),
(6, 2200.60, '2021-07-25'),
(7, 3000.00, '2021-06-15'),
(8, 1100.00, '2022-01-20'),
(9, 1550.50, '2022-02-15'),
(10, 2050.75, '2022-03-10'),
(11, 2550.00, '2022-04-05'),
(12, 1850.80, '2022-05-01'),
(13, 2250.60, '2022-06-25'),
(14, 3050.00, '2022-07-15'),
(15, 1200.00, '2022-08-20'),
(16, 1600.50, '2022-09-15'),
(17, 2100.75, '2022-10-10'),
(18, 2600.00, '2022-11-05'),
(19, 1900.80, '2022-12-01'),
(20, 2300.60, '2022-01-25'),
(21, 3100.00, '2022-02-15'),
(22, 1300.00, '2022-03-20'),
(23, 1650.50, '2022-04-15'),
(24, 2150.75, '2022-05-10'),
(25, 2650.00, '2022-06-05'),
(26, 1950.80, '2022-07-01'),
(27, 2350.60, '2022-08-25'),
(28, 3200.00, '2022-09-15'),
(1, 1400.00, '2023-01-20'),    -- Redundant entry
(2, 1750.50, '2023-02-15'),    -- Redundant entry
(3, 2200.75, '2023-03-10'),    -- Redundant entry
(4, 2700.00, '2023-04-05'),    -- Redundant entry
(5, 2000.80, '2023-05-01'),    -- Redundant entry
(6, 2400.60, '2023-06-25'),    -- Redundant entry
(7, 3100.00, '2023-07-15'),    -- Redundant entry
(8, 1500.00, '2023-01-20'),    -- Redundant entry
(9, 1850.50, '2023-02-15'),    -- Redundant entry
(10, 2250.75, '2023-03-10'),   -- Redundant entry
(11, 2750.00, '2023-04-05'),   -- Redundant entry
(12, 2100.80, '2023-05-01'),   -- Redundant entry
(13, 2500.60, '2023-06-25'),   -- Redundant entry
(14, 3300.00, '2023-07-15'),   -- Redundant entry
(15, 1600.00, '2023-01-20'),   -- Redundant entry
(16, 1950.50, '2023-02-15'),   -- Redundant entry
(17, 2300.75, '2023-03-10'),   -- Redundant entry
(18, 2800.00, '2023-04-05'),   -- Redundant entry
(19, 2200.80, '2023-05-01'),   -- Redundant entry
(20, 2600.60, '2023-06-25'),   -- Redundant entry
(21, 3400.00, '2023-07-15'),   -- Redundant entry
(22, 1700.00, '2023-01-20'),   -- Redundant entry
(23, 2050.50, '2023-02-15'),   -- Redundant entry
(24, 2400.75, '2023-03-10'),   -- Redundant entry
(25, 2900.00, '2023-04-05'),   -- Redundant entry
(26, 2300.80, '2023-05-01'),   -- Redundant entry
(27, 2700.60, '2023-06-25'),   -- Redundant entry
(28, 3500.00, '2023-07-15'),   -- Redundant entry
(28, 3555.00, '2023-07-15');   -- Redundant entry



INSERT INTO title (worker_id, worker_title, title_effective_from) VALUES
(1, 'HR Manager', '2020-01-15'),
(2, 'Financial Analyst', '2019-02-20'),
(3, 'IT Specialist', '2018-03-25'),
(4, 'Marketing Coordinator', '2021-04-30'),
(5, 'Sales Representative', '2022-05-10'),
(6, 'Operations Supervisor', '2017-06-15'),
(7, 'Logistics Manager', '2016-07-20'),
(8, 'HR Assistant', '2020-08-25'),
(9, 'Senior Financial Analyst', '2019-09-30'),
(10, 'IT Consultant', '2018-10-05'),
(11, 'Marketing Specialist', '2021-11-10'),
(12, 'Sales Manager', '2022-12-15'),
(13, 'Operations Manager', '2017-01-20'),
(14, 'Logistics Coordinator', '2016-02-25'),
(15, 'HR Coordinator', '2020-03-30'),
(16, 'Junior Financial Analyst', '2019-04-05'),
(17, 'IT Support Specialist', '2018-05-10'),
(18, 'Marketing Manager', '2021-06-15'),
(19, 'Sales Executive', '2022-07-20'),
(20, 'Operations Assistant', '2017-08-25'),
(21, 'Logistics Supervisor', '2016-09-30'),
(22, 'HR Director', '2020-10-05'),
(23, 'Finance Manager', '2019-11-10'),
(24, 'Senior IT Consultant', '2018-12-15'),
(25, 'Marketing Director', '2021-01-20'),
(26, 'Sales Director', '2022-02-25'),
(27, 'HR Manager', '2020-01-15'),    -- Redundant entry
(28, 'Financial Analyst', '2019-02-20'),   -- Redundant entry
(29, 'IT Specialist', '2018-03-25'),    -- Redundant entry
(30, 'Marketing Coordinator', '2021-04-30'), -- Redundant entry
(31, 'Sales Representative', '2022-05-10'),   -- Redundant entry
(32, 'Operations Supervisor', '2017-06-15'), -- Redundant entry
(33, 'Logistics Manager', '2016-07-20'), -- Redundant entry
(34, 'HR Assistant', '2020-08-25'),       -- Redundant entry
(35, 'Senior Financial Analyst', '2019-09-30'),   -- Redundant entry
(36, 'IT Consultant', '2018-10-05');      -- Redundant entry

TRUNCATE TABLE title;

DESCRIBE title;

SELECT * from title;


-- TESTING ALTER


CREATE TABLE age (
	SNO INT PRIMARY KEY auto_increment,
	worker_id INT,
    age INT NOT NULL,
    experience INT DEFAULT 0 ,
    email varchar(50) unique,
    constraint age CHECK(age >= 18),
    constraint FOREIGN KEY (worker_id) REFERENCES worker(id) ON DELETE CASCADE -- we can use other refrential constrants like set null , set default
    );

ALTER TABLE age RENAME COLUMN email to mail; -- Rename a cloumn

ALTER TABLE age DROP COLUMN mail; -- DROP TABLE COLUMN

ALTER TABLE age ADD COLUMN is_active boolean NOT NULL default 0; -- Add new coloumn

ALTER TABLE age MODIFY COLUMN is_active varchar(50) NOT NULL DEFAULT 'NO'; -- Modify Column

INSERT INTO age (worker_id, age, experience, is_active) VALUES
(1, 25, 2, 'YES'),
(2, 30, 5, 'NO'),
(3, 22, 1, 'YES'),
(4, 35, 10, 'NO'),
(5, 28, 4, 'YES'),
(6, 40, 15, 'NO'),
(7, 27, 3, 'YES'),
(8, 24, 2, 'NO'),
(9, 32, 6, 'YES'),
(10, 29, 5, 'NO');

DELETE FROM worker where id=10;

UPDATE age SET is_active='YES', experience=2 where worker_id>=5;

# UPDATE age SET experience=3; -- will give error in safe mode

# DELETE FROM age ; -- Will error in safe mode


# INSERT INTO age (worker_id, age, experience, is_active) VALUES (10, 29, 5, 'NO');
# DELETE FROM age WHERE worker_id=10; -- This would delete all the values with worker id =10 in child table age courtesy of ON DELETE CASCADE

# DELETE FROM age where experience<=1; -- error as where on a non key coloumn

REPLACE INTO age (worker_id, age, experience) VALUES
(1,18,0),
(2,20,2); -- Inserted as we dont use pk in replace 

REPLACE INTO age (SNo, age, experience) VALUES
(1,18,0),
(2,20,2); -- updated as we use pk in replace and pk is present

DESCRIBE age;

SELECT * FROM age;

DROP TABLE age;

DROP TABLE bonus;

DROP TABLE title;
