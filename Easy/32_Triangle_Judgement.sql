-- Problem: Triangle Judgement
-- Link: https://leetcode.com/problems/triangle-judgement/
-- Difficulty: Easy

-- Approach:
-- Apply triangle inequality:
-- sum of any two sides must be greater than the third

SELECT x, y, z,
CASE
    WHEN x + y > z AND x + z > y AND y + z > x THEN 'Yes'
    ELSE 'No'
END AS triangle
FROM Triangle;