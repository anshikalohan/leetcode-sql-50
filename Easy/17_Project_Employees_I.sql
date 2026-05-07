-- Problem: Project Employees I
-- Link: https://leetcode.com/problems/project-employees-i/
-- Difficulty: Easy

-- Approach:
-- Join Project with Employee on employee_id
-- Calculate average experience per project

SELECT p.project_id,
ROUND(AVG(e.experience_years), 2) AS average_years
FROM Project p
JOIN Employee e
ON p.employee_id = e.employee_id
GROUP BY p.project_id;