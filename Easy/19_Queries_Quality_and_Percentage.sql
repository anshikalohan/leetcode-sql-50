-- Problem: Queries Quality and Percentage
-- Link: https://leetcode.com/problems/queries-quality-and-percentage/
-- Difficulty: Easy

-- Approach:
-- Quality = average(rating / position)
-- Poor query percentage = % of queries with rating < 3
-- SUM(condition) works because TRUE = 1, FALSE = 0

SELECT query_name,
ROUND(AVG(rating / position), 2) AS quality,
ROUND(SUM(rating < 3) * 100 / COUNT(*), 2) AS poor_query_percentage
FROM Queries
GROUP BY query_name;