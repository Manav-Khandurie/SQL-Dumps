-- SUBQUERRY 
USE DB01;

SELECT * FROM DOCTORS;

SELECT * fROm appointmenTS;

SELECT * FROM patients;

-- Find the total number of appointments for each doctor.
-- SUBQUEERY IN SELECT
SELECT doctor_id, doctor_name , (
	SELECT COUNT(doctor_id) 
    FROM appointments a
    WHERE a.doctor_id = d.doctor_id
    ) AS total
    FROM doctors d; -- SUBQERRY MUST RESULT IN ONE 
    
    
-- Find patients who have appointments with more than one doctor.
-- SUBQUERRY IN WHERE

SELECT patient_name
FROM patients p
WHERE (SELECT COUNT(DISTINCT doctor_id)
       FROM appointments a
       WHERE a.patient_id = p.patient_id) > 1;


-- List doctors who have seen more than one patient along with the number of patients they have seen.
-- SUBQUERRY IN FROM

SELECT d.doctor_id, d.doctor_name, t.patient_count
FROM (
    SELECT doctor_id, COUNT(DISTINCT patient_id) AS patient_count
    FROM appointments
    GROUP BY doctor_id
) AS t
INNER JOIN doctors AS d ON t.doctor_id = d.doctor_id
WHERE t.patient_count > 1;



SELECT a.doctor_id , COUNT(a.patient_id) 
FROM appointments as a 
GROUP BY a.doctor_id;
