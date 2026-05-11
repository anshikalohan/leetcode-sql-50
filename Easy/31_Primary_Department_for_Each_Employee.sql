-- Problem: Primary Department for Each Employee
-- Link: https://leetcode.com/problems/primary-department-for-each-employee/
-- Difficulty: Easy

-- Approach:
-- Select rows where primary_flag = 'Y'
-- OR employees who belong to only one department

SELECT employee_id, department_id
FROM Employee
WHERE primary_flag = 'Y'
   OR employee_id IN (
       SELECT employee_id
       FROM Employee
       GROUP BY employee_id
       HAVING COUNT(department_id) = 1
   );