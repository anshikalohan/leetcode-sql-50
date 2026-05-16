-- Problem: Movie Rating
-- Link: https://leetcode.com/problems/movie-rating/
-- Difficulty: Medium

-- Approach:
-- Part 1:
-- Find user with maximum number of ratings
-- Break ties using lexicographically smaller name

-- Part 2:
-- Find highest rated movie in February 2020
-- Break ties using lexicographically smaller title

-- UNION ALL keeps duplicates if both results are same

(
    SELECT u.name AS results
    FROM Users u
    JOIN MovieRating m
    ON u.user_id = m.user_id
    GROUP BY m.user_id, u.name
    ORDER BY COUNT(*) DESC, u.name ASC
    LIMIT 1
)

UNION ALL

(
    SELECT mo.title AS results
    FROM Movies mo
    JOIN MovieRating m
    ON mo.movie_id = m.movie_id
    WHERE m.created_at LIKE '2020-02-%'
    GROUP BY m.movie_id, mo.title
    ORDER BY AVG(m.rating) DESC, mo.title ASC
    LIMIT 1
);