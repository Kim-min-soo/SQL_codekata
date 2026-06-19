-- 대여 기록이 존재하는 자동차 리스트 구하기
-- https://school.programmers.co.kr/learn/courses/30/lessons/157341
SELECT
    C.CAR_ID
FROM
    CAR_RENTAL_COMPANY_CAR C INNER JOIN CAR_RENTAL_COMPANY_RENTAL_HISTORY R
    ON C.CAR_ID = R.CAR_ID
WHERE
    C.CAR_TYPE = '세단'
    AND DATE_FORMAT(R.START_DATE, '%m') = 10
GROUP BY
    C.CAR_ID
ORDER BY
    C.CAR_ID DESC
