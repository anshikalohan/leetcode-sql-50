-- Problem: Restaurant Growth
-- Link: https://leetcode.com/problems/restaurant-growth/
-- Difficulty: Medium

-- Approach:
-- First aggregate total amount per day
-- Use window functions to calculate:
-- 1. Rolling 7-day total
-- 2. Rolling 7-day average
-- ROW_NUMBER helps filter rows starting from day 7

SELECT visited_on,
       amount,
       average_amount
FROM (
    SELECT visited_on,
           SUM(amount) OVER(
               ORDER BY visited_on
               ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
           ) AS amount,

           ROUND(
               AVG(amount) OVER(
                   ORDER BY visited_on
                   ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
               ),
           2) AS average_amount,

           ROW_NUMBER() OVER(ORDER BY visited_on) AS rnk

    FROM (
        SELECT visited_on,
               SUM(amount) AS amount
        FROM Customer
        GROUP BY visited_on
    ) t
) x
WHERE rnk >= 7
ORDER BY visited_on;