CREATE DATABASE DB01;

USE DB01;

CREATE TABLE employee(
	id INT PRIMARY KEY,
    name VARCHAR(50),
	age INT,
    is_active BOOLEAN ,
    join_time DATE,
    email VARCHAR(50) UNIQUE,
    salary FLOAT
    );
    
INSERT INTO employee VALUES(
	1,
    "manav",
    21,
    TRUE,
    '2024-06-25 10:30:00',
    'manavkhandurie@gmail.com',
    80000.0
    );
    
SELECT * FROM employee;

SELECT id,name FROM employee;

-- Comments