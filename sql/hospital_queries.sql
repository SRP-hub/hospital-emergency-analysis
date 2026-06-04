-- Display all records from the hospital table
SELECT * FROM hospital;

-- Calculate average patient wait time for each department
SELECT `Department Referral`, AVG(`Patient Waittime`) AS avg_wait
FROM hospital
GROUP BY `Department Referral`;

-- Find departments with an average wait time greater than 35 minutes
SELECT `Department Referral`, AVG(`Patient Waittime`) AS avg_wait
FROM hospital
GROUP BY `Department Referral`
HAVING AVG(`Patient Waittime`) > 35;

-- Find departments that handled more than 100 patients
SELECT `Department Referral`, COUNT(*) AS patient_count
FROM hospital
GROUP BY `Department Referral`
HAVING COUNT(*) > 100;

-- Find departments that handled more than 500 patients
SELECT `Department Referral`, COUNT(*) AS `number of patients`
FROM hospital
GROUP BY `Department Referral`
HAVING COUNT(*) > 500;

-- Display the top 3 departments with the highest average wait times
SELECT `Department Referral`, AVG(`Patient Waittime`) AS waittime
FROM hospital
GROUP BY `Department Referral`
ORDER BY waittime DESC
LIMIT 3;

-- Find admission dates with more than 20 patient admissions
SELECT `Patient Admission Date`, COUNT(*) AS patient_count
FROM hospital
GROUP BY `Patient Admission Date`
HAVING patient_count > 20;

-- Count the number of patients in each department
SELECT `Department Referral`, COUNT(*) AS patient_count
FROM hospital
GROUP BY `Department Referral`;

-- Display the top 3 departments with the highest patient counts
SELECT `Department Referral`, COUNT(*) AS patient_count
FROM hospital
GROUP BY `Department Referral`
ORDER BY patient_count DESC
LIMIT 3;

-- Find departments (excluding 'None') with more than 500 patients and an average wait time greater than 35 minutes
SELECT `Department Referral`, COUNT(*) AS patient_count, AVG(`Patient Waittime`) AS avg_wait
FROM hospital
WHERE `Department Referral` <> 'None'
GROUP BY `Department Referral`
HAVING patient_count > 500 AND avg_wait > 35;

-- Display departments ranked by average wait time (highest to lowest)
SELECT `Department Referral`, COUNT(*) AS patient_count, AVG(`Patient Waittime`) AS avg_wait
FROM hospital
WHERE `Department Referral` <> 'None'
GROUP BY `Department Referral`
ORDER BY avg_wait DESC;

-- Find departments with an average wait time between 35 and 37 minutes
SELECT `Department Referral`, AVG(`Patient Waittime`) AS avg_wait
FROM hospital
GROUP BY `Department Referral`
HAVING avg_wait >= 35 AND avg_wait <= 37;