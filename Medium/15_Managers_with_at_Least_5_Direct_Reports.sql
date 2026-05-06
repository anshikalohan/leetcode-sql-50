-- Problem: Managers with at Least 5 Direct Reports
-- Link: https://leetcode.com/problems/managers-with-at-least-5-direct-reports/
-- Difficulty: Medium

-- Approach:
-- Self join employees to count direct reports
-- Use GROUP BY + HAVING

SELECT a.name
FROM Employee a
JOIN Employee b
ON a.id = b.managerId
GROUP BY a.id, a.name
HAVING COUNT(b.managerId) >= 5;