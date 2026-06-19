-- 610. Triangle Judgement
-- https://leetcode.com/problems/triangle-judgement/description/
SELECT 
    x,
    y,
    z,
    if((x<y+z and y<x+z and z<x+y), 'Yes', 'No') as triangle
FROM Triangle;