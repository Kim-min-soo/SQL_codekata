-- 596. Classes With at Least 5 Students
-- https://leetcode.com/problems/classes-with-at-least-5-students/description/
SELECT
    class
FROM Courses
GROUP BY class
HAVING count(class) >= 5
