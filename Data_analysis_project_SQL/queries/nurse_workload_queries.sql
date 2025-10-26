-- Nurse Workload Analysis Queries

-- Question 1: Nurses in Medical or Surgical Morning shift
SELECT nurse_id, 
nurse_name 
FROM nurses
WHERE (department = 'Medical' OR department= 'Surgical') AND shift_type = 'Morning';
-- Question 2: Distinct departments
SELECT DISTINCT department 
FROM nurses
ORDER BY department ASC;
-- Question 3: Top 3 departments with the most nurses
SELECT department,COUNT(nurse_id) 
FROM nurses
GROUP BY department
ORDER BY department ASC
LIMIT 3;
-- Question 4 Average length of stay (in days) for patients in each ward.
SELECT ward, AVG(datediff(discharge_date, admission_date)) as average_stay_days
FROM patients
GROUP BY ward;
-- Question 5 Departments with nurses with  40 and 60 hours of work in total.
SELECT nurses.department, SUM(assignments.hours_spent)
FROM nurses
JOIN assignments
ON nurses.nurse_id = assignments.nurse_id
GROUP BY nurses.department
HAVING SUM(assignments.hours_spent) BETWEEN 40 AND 60;
-- Question 6 Nurses and the total number of patients
SELECT nurses.nurse_name, COUNT(assignments.patient_id) as total_assigned_patient
FROM nurses
JOIN assignments
ON nurses.nurse_id = assignments.nurse_id
GROUP BY nurses.nurse_name
ORDER BY total_assigned_patient  DESC;
-- Question 7 Nurses in Emergency Department with more than 20 hours of total work
SELECT nurses.nurse_name as Nurse, SUM(assignments.hours_spent) as total_hours
FROM nurses
JOIN assignments 
ON nurses.nurse_id = assignments.nurse_id
WHERE nurses.department = 'Emergency'
GROUP BY Nurse
HAVING total_hours > 20;
-- Question 8 Average length of stay for patients attended by each nurse.
SELECT nurses.nurse_name as nurse_name, AVG(datediff(discharge_date, admission_date)) as average_stay_days
FROM nurses
JOIN assignments
ON nurses.nurse_id = assignments.nurse_id
JOIN patients
ON assignments.patient_id = patients.patient_id
GROUP BY nurse_name
;
-- Question 9 Wards with average patient stay between 6 and 8 days?
SELECT ward, AVG(datediff(discharge_date, admission_date)) as average_stay_days
FROM patients
GROUP BY ward
HAVING average_stay_days BETWEEN 6 AND 8;
-- Question 10 The top 3 busiest nurses
SELECT nurses.nurse_name, COUNT(DISTINCT assignments.patient_id) as total_assigned_patient
FROM nurses
JOIN assignments
ON nurses.nurse_id = assignments.nurse_id
GROUP BY nurses.nurse_name
ORDER BY total_assigned_patient  DESC LIMIT 3;