-- 1148. Article Views I
-- https://leetcode.com/problems/article-views-i/description/
SELECT author_id as id
FROM Views
WHERE
    author_id = viewer_id
GROUP BY
    author_id
ORDER BY id
