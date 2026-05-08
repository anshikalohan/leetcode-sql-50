-- Problem: Game Play Analysis IV
-- Link: https://leetcode.com/problems/game-play-analysis-iv/
-- Difficulty: Medium

-- Approach:
-- Find first login date per player
-- Check if player logged in again next day
-- Count such players and divide by total players

SELECT 
ROUND(
    COUNT(a.player_id) / 
    (SELECT COUNT(DISTINCT player_id) FROM Activity), 
2) AS fraction
FROM Activity a
JOIN Activity b
ON a.player_id = b.player_id
WHERE a.event_date IN (
    SELECT MIN(event_date)
    FROM Activity
    WHERE player_id = a.player_id
)
AND DATEDIFF(b.event_date, a.event_date) = 1;