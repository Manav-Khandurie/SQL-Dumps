-- JOINS 
USE db01;

DESCRIBE departments;

SELECT * FROM departments;

DESCRIBE projects;

SELECT * FROM projects;

DESCRIBE employees;

SELECT * FROM employees;

-- Inner Join
SELECT e.* , p.* FROM employees AS e 
INNER jOIN projects AS p
ON e.employee_id = p.employee_id; 

-- LEFT JOIN [ LEFT OUTER JOIN ]
SELECT d.* , e.*
FROM departments AS d
LEFT JOIN employees AS e
ON d.department_id = e.department_id;

-- RIGHT JOIN [ RIGHT OUTER JOIN ]
SELECT e.employee_id, e.employee_name, p.project_name
FROM employees AS e
RIGHT JOIN projects AS p 
ON e.employee_id = p.employee_id;

-- FULL OUTER JOIN [ FULL OUTER JOIN ] woudnt work in mysql
-- SELECT p.* , e.*
-- FROM employees AS e
-- FULL OUTER JOIN projects AS p
-- ON p.employee_id = e.employee_id ;

SELECT e.employee_id, e.employee_name, p.project_name
FROM employees e
LEFT JOIN projects p ON e.employee_id = p.employee_id
UNION
SELECT e.employee_id, e.employee_name, p.project_name
FROM employees e
RIGHT JOIN projects p ON e.employee_id = p.employee_id;

-- SELF JOIN 
SELECT *
FROM employees e1, employees e2
WHERE e1.employee_id = e2.employee_id;

-- CROSS JOIN [ GIVES ALL PnC ]
SELECT *
FROM employees e
CROSS JOIN projects p;

-- JOINS WITHOUT JOINS [ IMPLICIT JOIN ]
SELECT e.employee_name , p.project_name
FROM employees e , projects p
WHERE e.employee_id = p.employee_id; 
