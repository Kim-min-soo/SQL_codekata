-- 1581. Customer Who Visited but Did Not Make Any Transactions
-- https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/description/
SELECT
    v.customer_id,
    COUNT(*) AS count_no_trans
FROM 
    Visits v left join Transactions t
    on v.visit_id = t.visit_id
WHERE
    t.visit_id is null
GROUP BY
    v.customer_id
