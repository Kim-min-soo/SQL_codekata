-- DATETIME에서 DATE로 형 변환
-- https://school.programmers.co.kr/learn/courses/30/lessons/59414
SELECT
    ANIMAL_ID,
    NAME,
    DATE_FORMAT(DATE(DATETIME), '%Y-%m-%d') AS DATETIME
FROM
    ANIMAL_INS
ORDER BY
    ANIMAL_ID
