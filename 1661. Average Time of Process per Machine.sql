-- 1661. Average Time of Process per Machine
-- https://leetcode.com/problems/average-time-of-process-per-machine/description/
SELECT
    s.machine_id,
    ROUND(avg(e.timestamp-s.timestamp),3) as processing_time
FROM(
SELECT *
FROM Activity
WHERE
    activity_type = 'start'
) s inner join
(
SELECT *
FROM Activity
WHERE
    activity_type = 'end'
) e
ON s.machine_id = e.machine_id
AND s.process_id = e.process_id
GROUP BY machine_id
