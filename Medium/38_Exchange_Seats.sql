-- Problem: Exchange Seats
-- Link: https://leetcode.com/problems/exchange-seats/
-- Difficulty: Medium

-- Approach:
-- Swap adjacent seat IDs:
-- even id -> id - 1
-- odd id -> id + 1
-- Keep last odd id unchanged if no pair exists

SELECT
    CASE
        WHEN id % 2 = 0 THEN id - 1
        WHEN id % 2 = 1
             AND id != (SELECT MAX(id) FROM Seat)
        THEN id + 1
        ELSE id
    END AS id,
    student
FROM Seat
ORDER BY id;