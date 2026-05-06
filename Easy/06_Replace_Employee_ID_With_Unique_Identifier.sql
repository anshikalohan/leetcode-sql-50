-- Problem: Replace Employee ID With The Unique Identifier
-- Link: https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/
-- Difficulty: Easy

-- Approach:
-- Use RIGHT JOIN to keep all employees
-- Match IDs to get unique_id if present

SELECT a.unique_id, b.name
FROM EmployeeUNI a
RIGHT JOIN Employees b
ON a.id = b.id;