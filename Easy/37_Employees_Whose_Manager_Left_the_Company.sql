-- Problem: Employees Whose Manager Left the Company
-- Link: https://leetcode.com/problems/employees-whose-manager-left-the-company/
-- Difficulty: Easy

-- Approach:
-- Find employees whose manager_id does not exist
-- in the Employees table
-- Exclude employees with salary >= 30000

SELECT employee_id
FROM Employees e
WHERE salary < 30000
AND manager_id IS NOT NULL
AND NOT EXISTS (
    SELECT 1
    FROM Employees m
    WHERE e.manager_id = m.employee_id
)
ORDER BY employee_id;