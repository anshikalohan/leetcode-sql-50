-- Problem: Biggest Single Number
-- Link: https://leetcode.com/problems/biggest-single-number/
-- Difficulty: Easy

-- Approach:
-- Find numbers that appear exactly once
-- Then take MAX of those numbers

SELECT MAX(num) AS num
FROM MyNumbers
WHERE num IN (
    SELECT num
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(num) = 1
);