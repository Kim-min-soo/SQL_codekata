-- 1667. Fix Names in a Table
-- https://leetcode.com/problems/fix-names-in-a-table/description/
SELECT 
    user_id,
    concat(upper(left(name, 1)),lower(right(name,length(name)-1))) as name
FROM Users
order by user_id;
