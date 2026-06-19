-- 우유와 요거트가 담긴 장바구니
-- https://school.programmers.co.kr/learn/courses/30/lessons/62284
SELECT 
    M.CART_ID
FROM (SELECT *
      FROM CART_PRODUCTS
      WHERE NAME = 'Milk') M 
     INNER JOIN 
     (SELECT *
      FROM CART_PRODUCTS
      WHERE NAME = 'Yogurt') Y
      ON M.CART_ID = Y.CART_ID
ORDER BY
    M.CART_ID
