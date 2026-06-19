-- 1068. Product Sales Analysis I
-- https://leetcode.com/problems/product-sales-analysis-i/description/
SELECT
    product_name,
    year,
    price
FROM
    Sales s INNER JOIN Product p
    ON s.product_id = p.product_id
