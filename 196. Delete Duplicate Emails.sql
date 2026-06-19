-- 196. Delete Duplicate Emails
-- https://leetcode.com/problems/delete-duplicate-emails/description/
DELETE p1 
FROM 
    Person p1 LEFT JOIN Person p2
    ON p1.email = p2.email
WHERE
    p1.id > p2.id
