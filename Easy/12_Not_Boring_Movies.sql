-- Problem: Not Boring Movies
-- Link: https://leetcode.com/problems/not-boring-movies/
-- Difficulty: Easy

-- Approach:
-- Filter odd IDs and non-boring movies
-- Sort by rating descending

SELECT *
FROM Cinema
WHERE id % 2 != 0
AND description != 'boring'
ORDER BY rating DESC;