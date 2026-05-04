-- Problem: Find Customer Referee
-- Link: https://leetcode.com/problems/find-customer-referee/
-- Difficulty: Easy

-- Approach:
-- We need customers whose referee_id is NOT 2
-- OR customers who do not have a referee (NULL)
-- Because NULL values are not included in != comparisons,
-- we explicitly check for referee_id IS NULL

SELECT name
FROM Customer
WHERE referee_id != 2 OR referee_id IS NULL;