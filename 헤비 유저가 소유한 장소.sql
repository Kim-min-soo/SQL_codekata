-- 헤비 유저가 소유한 장소
-- https://school.programmers.co.kr/learn/courses/30/lessons/77487
WITH HEAVY_USERS AS(
SELECT
    HOST_ID,
    CASE
        WHEN COUNT(*) OVER(PARTITION BY HOST_ID) >1 THEN 1
        ELSE 0
    END AS COUNT_HEAVY_USER
FROM PLACES
)

SELECT 
    P.ID,
    P.NAME,
    P.HOST_ID
FROM 
    PLACES P INNER JOIN HEAVY_USERS H
    ON P.HOST_ID = H.HOST_ID
WHERE 
    H.COUNT_HEAVY_USER = 1
GROUP BY
    P.ID,
    P.NAME,
    P.HOST_ID
ORDER BY
    P.ID
