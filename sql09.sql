-- SET OPERATIONS

USE db01;

SELECT * FROM students;

SELECT * FROM teachers;

-- Union [ NO DUPLICATES ] [ NOTE we fix the naming to make both t1 t2 coloumn name same ]
SELECT student_id AS id, student_name AS name FROM students
UNION
SELECT teacher_id AS id, teacher_name AS name FROM teachers;

-- Union all [ HAS DUPLICATES ]
SELECT student_id AS id, student_name AS name FROM students
UNION ALL
SELECT teacher_id AS id, teacher_name AS name FROM teachers;

-- Intersect [ we can select common ] [Done via INNER JOIN in mysql]
SELECT s.student_id AS ID , s.student_name AS NAME
FROM students AS s
INNER JOIN teachers AS t 
ON s.student_id=t.teacher_id;

-- Except/Minus [ we get elemnts in t1 not in t2 ] [ T1-T2 ]
SELECT s.student_id AS ID , s.student_name AS NAME
FROM students AS s
LEFT JOIN teachers AS t
ON s.student_id=t.teacher_id
WHERE t.teacher_id IS NULL;