-- 1211. Queries Quality and Percentage
-- https://leetcode.com/problems/queries-quality-and-percentage/description/
SELECT
    query_name,
    ROUND(sum(rating/position)/COUNT(*),2) as quality,
    ROUND(COUNT(CASE WHEN rating<3 THEN 1 END) / COUNT(*) * 100, 2) as poor_query_percentage
FROM Queries
GROUP BY query_name
