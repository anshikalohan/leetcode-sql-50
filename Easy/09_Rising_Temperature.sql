-- Problem: Rising Temperature
-- Link: https://leetcode.com/problems/rising-temperature/
-- Difficulty: Easy

-- Approach:
-- Self join table for consecutive days
-- Compare temperatures

SELECT w1.id
FROM Weather w1
JOIN Weather w2
ON DATEDIFF(w1.recordDate, w2.recordDate) = 1
WHERE w1.temperature > w2.temperature;