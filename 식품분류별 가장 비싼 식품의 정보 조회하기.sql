-- 식품분류별 가장 비싼 식품의 정보 조회하기
-- https://school.programmers.co.kr/learn/courses/30/lessons/131116
WITH RN AS (
SELECT
    CATEGORY,
    RANK() OVER(PARTITION BY CATEGORY ORDER BY PRICE DESC) AS RN_PRICE,
    PRODUCT_NAME,
    PRICE
FROM
    FOOD_PRODUCT
WHERE
    CATEGORY IN ('과자','국','김치','식용유')
)
SELECT
    CATEGORY,
    PRICE AS MAX_PRICE,
    PRODUCT_NAME
FROM RN
WHERE 
    RN_PRICE = 1
ORDER BY
    MAX_PRICE DESC;
