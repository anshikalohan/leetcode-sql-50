-- Problem: Find Followers Count
-- Link: https://leetcode.com/problems/find-followers-count/
-- Difficulty: Easy

-- Approach:
-- Count followers per user_id
-- Sort results by user_id

SELECT user_id,
COUNT(follower_id) AS followers_count
FROM Followers
GROUP BY user_id
ORDER BY user_id;