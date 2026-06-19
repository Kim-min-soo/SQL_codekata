-- 197. Rising Temperature
-- https://leetcode.com/problems/rising-temperature/description/
SELECT t.id
FROM 
    Weather t inner join Weather y
    on DATE_ADD(y.recordDate, INTERVAL 1 DAY) = t.recordDate
WHERE
    y.temperature < t.temperature
