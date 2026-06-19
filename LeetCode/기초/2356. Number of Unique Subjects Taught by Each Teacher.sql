-- 2356. Number of Unique Subjects Taught by Each Teacher
-- https://leetcode.com/problems/number-of-unique-subjects-taught-by-each-teacher/description/
SELECT *
FROM
(
SELECT
    teacher_id,
    COUNT(*) OVER(PARTITION BY teacher_id) as cnt
FROM
    Teacher
GROUP BY
    teacher_id,
    subject_id
) a
GROUP BY
    teacher_id,
    cnt
