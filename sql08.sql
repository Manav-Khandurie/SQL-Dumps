USE db01;

-- Drop tables if they exist
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS teachers;

-- Create the students table
CREATE TABLE students (
    student_id INT,
    student_name VARCHAR(100)
);

-- Create the teachers table
CREATE TABLE teachers (
    teacher_id INT,
    teacher_name VARCHAR(100)
);

-- Insert sample data into the students table
INSERT INTO students (student_id, student_name) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie'),
(4, 'David'),
(5, 'Eve');

-- Insert sample data into the teachers table
INSERT INTO teachers (teacher_id, teacher_name) VALUES
(3, 'Charlie'),
(4, 'David'),
(5, 'Eve'),
(6, 'Frank'),
(7, 'Grace');


SELECT * FROM students;

SELECT * FROM teachers;

DROP TABLE students;

DROP TABLE teachers;