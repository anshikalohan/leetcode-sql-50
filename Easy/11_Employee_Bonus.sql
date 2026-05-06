-- Problem: Employee Bonus
-- Link: https://leetcode.com/problems/employee-bonus/
-- Difficulty: Easy

-- Approach:
-- LEFT JOIN to include employees without bonus
-- Filter bonus < 1000 OR NULL

SELECT e.name, b.bonus
FROM Employee e
LEFT JOIN Bonus b
ON e.empId = b.empId
WHERE b.bonus < 1000 OR b.bonus IS NULL;