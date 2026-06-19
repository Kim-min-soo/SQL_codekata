-- 1280. Students and Examinations
-- https://leetcode.com/problems/students-and-examinations/description/
SELECT 
    s.student_id,
    s.student_name,
    s.subject_name,
    COALESCE(COUNT(e.student_id),0) AS attended_exams
FROM
(
SELECT *
FROM Students cross join Subjects
) s 
left join Examinations e
ON (s.student_id = e.student_id AND s.subject_name = e.subject_name)
GROUP BY
    s.student_id,
    s.student_name,
    s.subject_name
ORDER BY
    s.student_id
