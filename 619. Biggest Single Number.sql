-- 619. Biggest Single Number
-- https://leetcode.com/problems/biggest-single-number/description/
SELECT(
SELECT num
FROM MyNumbers
GROUP BY num
HAVING COUNT(*) = 1
ORDER BY num DESC
LIMIT 1 
) AS num
