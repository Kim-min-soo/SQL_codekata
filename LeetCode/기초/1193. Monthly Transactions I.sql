-- 1193. Monthly Transactions I
-- https://leetcode.com/problems/monthly-transactions-i/description/
SELECT
    DATE_FORMAT(trans_date, '%Y-%m') as month,
    country,
    COUNT(*) as trans_count,
    SUM(CASE WHEN state="approved" THEN 1 ELSE 0 END) AS approved_count,
    SUM(amount) as trans_total_amount,
    SUM(CASE WHEN state="approved" THEN amount ELSE 0 END) approved_total_amount
FROM
    Transactions
GROUP BY 
    CONCAT(YEAR(trans_date),"-",MONTH(trans_date)),
    country
