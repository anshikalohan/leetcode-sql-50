-- Problem: Confirmation Rate
-- Link: https://leetcode.com/problems/confirmation-rate/
-- Difficulty: Easy

-- Approach:
-- LEFT JOIN users with confirmations
-- Calculate average of confirmed actions

SELECT s.user_id,
ROUND(IFNULL(AVG(c.action = 'confirmed'), 0), 2) AS confirmation_rate
FROM Signups s
LEFT JOIN Confirmations c
ON s.user_id = c.user_id
GROUP BY s.user_id;