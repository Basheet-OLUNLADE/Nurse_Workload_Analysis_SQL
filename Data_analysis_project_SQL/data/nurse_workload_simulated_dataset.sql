CREATE DATABASE nurse_workload;
USE nurse_workload;
CREATE TABLE nurses (
    nurse_id INT PRIMARY KEY,
    nurse_name VARCHAR(50),
    department VARCHAR(30),
    hire_date DATE,
    shift_type VARCHAR(10)
);

CREATE TABLE patients (
    patient_id INT PRIMARY KEY,
    patient_name VARCHAR(50),
    admission_date DATE,
    discharge_date DATE,
    ward VARCHAR(30)
);

CREATE TABLE assignments (
    assignment_id INT PRIMARY KEY,
    nurse_id INT,
    patient_id INT,
    date_assigned DATE,
    hours_spent INT,
    FOREIGN KEY (nurse_id) REFERENCES nurses(nurse_id),
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);
INSERT INTO nurses (nurse_id, nurse_name, department, hire_date, shift_type)
VALUES
(1, 'Grace Adeyemi', 'Medical', '2018-03-10', 'Morning'),
(2, 'Tosin Bamidele', 'Surgical', '2020-05-15', 'Afternoon'),
(3, 'Ngozi Okafor', 'Paediatrics', '2019-07-20', 'Night'),
(4, 'Mary Johnson', 'Maternity', '2017-10-05', 'Morning'),
(5, 'Ahmed Sule', 'Emergency', '2021-02-18', 'Night'),
(6, 'Ruth Danladi', 'Medical', '2022-09-01', 'Afternoon'),
(7, 'Chioma Eze', 'Surgical', '2016-11-12', 'Morning'),
(8, 'Bose Akinola', 'Paediatrics', '2020-01-25', 'Night'),
(9, 'John Okon', 'Emergency', '2019-04-09', 'Afternoon'),
(10, 'Ifeoma Bello', 'Maternity', '2023-06-17', 'Morning');
INSERT INTO patients (patient_id, patient_name, admission_date, discharge_date, ward)
VALUES
(1, 'Adebayo Kayode', '2025-01-10', '2025-01-15', 'Medical'),
(2, 'Ngozi Nwosu', '2025-02-12', '2025-02-20', 'Surgical'),
(3, 'Ibrahim Musa', '2025-03-05', '2025-03-14', 'Paediatrics'),
(4, 'Chidinma Eke', '2025-04-01', '2025-04-08', 'Maternity'),
(5, 'Emeka Ojo', '2025-01-22', '2025-01-30', 'Emergency'),
(6, 'Hauwa Bello', '2025-02-03', '2025-02-10', 'Medical'),
(7, 'Tunde Balogun', '2025-02-15', '2025-02-22', 'Surgical'),
(8, 'Aisha Abdullahi', '2025-03-09', '2025-03-18', 'Emergency'),
(9, 'Funke Adeniran', '2025-03-25', '2025-04-02', 'Maternity'),
(10, 'Blessing Etim', '2025-04-10', '2025-04-15', 'Paediatrics'),
(11, 'James Udo', '2025-04-22', '2025-04-28', 'Emergency'),
(12, 'Kemi Oladipo', '2025-05-01', '2025-05-08', 'Medical'),
(13, 'Yakubu Danjuma', '2025-05-09', '2025-05-17', 'Surgical'),
(14, 'Rita Akpan', '2025-06-02', '2025-06-10', 'Paediatrics'),
(15, 'Abiola Lawal', '2025-06-12', '2025-06-18', 'Emergency');
INSERT INTO assignments (assignment_id, nurse_id, patient_id, date_assigned, hours_spent)
VALUES
(1, 1, 1, '2025-01-10', 6),
(2, 2, 2, '2025-02-12', 8),
(3, 3, 3, '2025-03-05', 5),
(4, 4, 4, '2025-04-01', 7),
(5, 5, 5, '2025-01-22', 9),
(6, 1, 6, '2025-02-03', 6),
(7, 2, 7, '2025-02-15', 7),
(8, 9, 8, '2025-03-09', 10),
(9, 4, 9, '2025-03-25', 8),
(10, 3, 10, '2025-04-10', 6),
(11, 5, 11, '2025-04-22', 8),
(12, 6, 12, '2025-05-01', 5),
(13, 7, 13, '2025-05-09', 7),
(14, 8, 14, '2025-06-02', 6),
(15, 9, 15, '2025-06-12', 9),
(16, 10, 9, '2025-03-27', 4),
(17, 1, 3, '2025-03-05', 5),
(18, 2, 6, '2025-02-03', 8),
(19, 3, 5, '2025-01-22', 7),
(20, 4, 7, '2025-02-15', 6),
(21, 5, 10, '2025-04-10', 9),
(22, 6, 11, '2025-04-22', 5),
(23, 7, 12, '2025-05-01', 6),
(24, 8, 13, '2025-05-09', 7),
(25, 9, 14, '2025-06-02', 8),
(26, 10, 15, '2025-06-12', 6),
(27, 1, 2, '2025-02-12', 5),
(28, 2, 8, '2025-03-09', 9),
(29, 3, 9, '2025-03-25', 7),
(30, 4, 15, '2025-06-12', 6);
SELECT * 
FROM nurses;
SELECT * 
FROM patients;
SELECT * 
FROM assignments;
