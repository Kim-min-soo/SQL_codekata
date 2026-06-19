-- 176. Second Highest Salary
-- https://leetcode.com/problems/second-highest-salary/description/
SELECT 
    MAX(a.salary) AS SecondHighestSalary
FROM (
    SELECT
        salary,
        DENSE_RANK() OVER (ORDER BY salary DESC) AS SalaryRank
    FROM Employee
    ) a
WHERE a.SalaryRank = 2
