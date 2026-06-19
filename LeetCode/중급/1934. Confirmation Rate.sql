-- 1934. Confirmation Rate
-- https://leetcode.com/problems/confirmation-rate/description/
SELECT
    s.user_id,
    IFNULL(ROUND(SUM(action = 'confirmed')/SUM(action IN ('timeout','confirmed')),2),0) AS confirmation_rate
FROM 
    Signups s left join Confirmations c
    on s.user_id = c.user_id
GROUP BY
    s.user_id
