-- 570. Managers with at Least 5 Direct Reports
-- https://leetcode.com/problems/managers-with-at-least-5-direct-reports/description/
SELECT name
FROM Employee
WHERE
id IN(
    SELECT managerId
    FROM Employee
    GROUP BY managerId
    HAVING count(managerId) >= 5
) 
