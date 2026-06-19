-- 577. Employee Bonus
-- https://leetcode.com/problems/employee-bonus/description/
SELECT
    e.name,
    b.bonus
FROM
    Employee e left join Bonus b
    on e.empId = b.empId
WHERE
    b.bonus is null OR b.bonus < 1000
