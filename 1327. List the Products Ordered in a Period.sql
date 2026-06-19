-- 1327. List the Products Ordered in a Period
-- https://leetcode.com/problems/list-the-products-ordered-in-a-period/description/
select
    p.product_name,
    sum(o.unit) as unit
from 
    Orders o inner join Products p
    on o.product_id = p.product_id
where Year(o.order_date) = 2020 and Month(o.order_date) = 02
group by o.product_id
having sum(o.unit) >= 100
