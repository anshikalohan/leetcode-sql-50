-- Problem: Last Person to Fit in the Bus
-- Link: https://leetcode.com/problems/last-person-to-fit-in-the-bus/
-- Difficulty: Medium

-- Approach:
-- Compute running total of weights using SUM window function
-- Keep rows where cumulative weight <= 1000
-- Select last valid person

SELECT person_name
FROM (
    SELECT person_name,
           SUM(weight) OVER(ORDER BY turn) AS total_weight
    FROM Queue
) t
WHERE total_weight <= 1000
ORDER BY total_weight DESC
LIMIT 1;