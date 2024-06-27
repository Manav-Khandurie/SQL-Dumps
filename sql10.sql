-- Drop tables if they exist
USE db01;

DROP TABLE IF EXISTS appointments;
DROP TABLE IF EXISTS patients;
DROP TABLE IF EXISTS doctors;

-- Create the doctors table
CREATE TABLE doctors (
    doctor_id INT PRIMARY KEY,
    doctor_name VARCHAR(100) NOT NULL,
    specialty VARCHAR(100) NOT NULL,
    hire_date DATE
);

-- Create the patients table
CREATE TABLE patients (
    patient_id INT PRIMARY KEY,
    patient_name VARCHAR(100) NOT NULL,
    birth_date DATE,
    gender VARCHAR(10)
);

-- Create the appointments table
CREATE TABLE appointments (
    appointment_id INT PRIMARY KEY,
    doctor_id INT,
    patient_id INT,
    appointment_date DATE,
    notes TEXT,
    FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id),
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);

-- Insert sample data into the doctors table
INSERT INTO doctors (doctor_id, doctor_name, specialty, hire_date) VALUES
(1, 'Dr. John Smith', 'Cardiology', '2015-03-15'),
(2, 'Dr. Emily Davis', 'Neurology', '2016-07-20'),
(3, 'Dr. Michael Brown', 'Orthopedics', '2017-01-10'),
(4, 'Dr. Laura Wilson', 'Pediatrics', '2018-05-22'),
(5, 'Dr. James Taylor', 'Dermatology', '2019-08-30');

-- Insert sample data into the patients table
INSERT INTO patients (patient_id, patient_name, birth_date, gender) VALUES
(101, 'Alice Johnson', '1990-04-12', 'Female'),
(102, 'Bob Smith', '1985-09-30', 'Male'),
(103, 'Charlie Davis', '2000-02-25', 'Male'),
(104, 'Diana Evans', '1975-11-14', 'Female'),
(105, 'Ethan Brown', '1988-06-22', 'Male');

-- Insert sample data into the appointments table
INSERT INTO appointments (appointment_id, doctor_id, patient_id, appointment_date, notes) VALUES
(1001, 1, 101, '2022-03-15', 'Routine check-up'),
(1002, 2, 102, '2022-04-20', 'Neurological consultation'),
(1003, 3, 103, '2022-05-10', 'Knee pain'),
(1004, 4, 104, '2022-06-22', 'Pediatric check-up for child'),
(1005, 5, 105, '2022-07-30', 'Skin rash treatment'),
(1006, 1, 102, '2022-08-15', 'Follow-up check-up'),
(1007, 2, 103, '2022-09-05', 'Neurological follow-up'),
(1008, 3, 104, '2022-10-25', 'Orthopedic surgery consultation'),
(1009, 4, 105, '2022-11-14', 'Pediatric follow-up'),
(1010, 5, 101, '2022-12-20', 'Dermatology consultation');

DROP TABLE appointments ;

DROP TABLE patients;

DROP TABLE doctors;