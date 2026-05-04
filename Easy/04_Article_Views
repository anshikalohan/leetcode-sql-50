-- Problem: Article Views I
-- Link: https://leetcode.com/problems/article-views-i/
-- Difficulty: Easy

-- Approach:
-- We need authors who viewed their own articles
-- This happens when author_id = viewer_id
-- Use DISTINCT to avoid duplicate author IDs
-- Sort results by author_id

SELECT DISTINCT author_id AS id
FROM Views
WHERE author_id = viewer_id
ORDER BY author_id;