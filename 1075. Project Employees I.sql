-- 1075. Project Employees I
-- https://leetcode.com/problems/project-employees-i/description/
SELECT
    p.project_id,
    ROUND(AVG(experience_years),2) as average_years
FROM
    Project p INNER JOIN Employee e
    on p.employee_id = e.employee_id
GROUP BY
    p.project_id
