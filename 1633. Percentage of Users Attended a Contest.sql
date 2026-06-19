-- 1633. Percentage of Users Attended a Contest
-- https://leetcode.com/problems/percentage-of-users-attended-a-contest/description/
SELECT
    r.contest_id,
    ROUND(count(r.user_id)/(SELECT COUNT(*) FROM Users)*100,2) as percentage
FROM
    Register r INNER JOIN Users u
    ON r.user_id = u.user_id
GROUP BY
    r.contest_id
ORDER BY
    percentage DESC,
    contest_id;
