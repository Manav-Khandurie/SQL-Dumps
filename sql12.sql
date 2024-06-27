-- VIEWS
USE db01;

CREATE VIEW doctor_patient_count_view AS
SELECT d.doctor_id, d.doctor_name, COUNT(DISTINCT a.patient_id) AS patient_count
FROM doctors d
INNER JOIN appointments a ON d.doctor_id = a.doctor_id
GROUP BY d.doctor_id, d.doctor_name
HAVING COUNT(DISTINCT a.patient_id) > 1;

SELECT * FROM doctor_patient_count_view;

-- Modify the view to include speciality
ALTER VIEW doctor_patient_count_view AS
SELECT d.doctor_id, d.doctor_name, d.specialty, COUNT(DISTINCT a.patient_id) AS patient_count
FROM doctors d
INNER JOIN appointments a ON d.doctor_id = a.doctor_id
GROUP BY d.doctor_id, d.doctor_name,d .specialty
HAVING COUNT(DISTINCT a.patient_id) > 1;



SELECT * FROM doctor_patient_count_view;

DROP VIEW doctor_patient_count_view;