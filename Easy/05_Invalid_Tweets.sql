-- Problem: Invalid Tweets
-- Link: https://leetcode.com/problems/invalid-tweets/
-- Difficulty: Easy

-- Approach:
-- A tweet is invalid if its content length is greater than 15 characters
-- Use LENGTH() to calculate string size

SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15;