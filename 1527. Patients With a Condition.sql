-- 1527. Patients With a Condition
-- https://leetcode.com/problems/patients-with-a-condition/description/
SELECT *
FROM Patients
WHERE
    conditions like 'DIAB1%'
    OR conditions like '% DIAB1%'
