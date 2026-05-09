-- Problem: Classes With at Least 5 Students
-- Link: https://leetcode.com/problems/classes-with-at-least-5-students/
-- Difficulty: Easy

-- Approach:
-- Group by class
-- Filter groups using HAVING

SELECT class
FROM Courses
GROUP BY class
HAVING COUNT(*) >= 5;