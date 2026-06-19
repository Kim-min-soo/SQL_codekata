-- 오랜 기간 보호한 동물(2)
-- https://school.programmers.co.kr/learn/courses/30/lessons/59411
SELECT
    I.ANIMAL_ID,
    I.NAME
FROM
    ANIMAL_INS I INNER JOIN ANIMAL_OUTS O
    ON I.ANIMAL_ID = O.ANIMAL_ID
ORDER BY
    O.DATETIME - I.DATETIME DESC
LIMIT 2;
