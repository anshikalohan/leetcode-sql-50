-- Problem: Consecutive Numbers
-- Link: https://leetcode.com/problems/consecutive-numbers/
-- Difficulty: Medium

-- Approach:
-- Use LEAD and LAG to compare neighboring rows
-- If previous and next numbers match current number,
-- then the number appears consecutively 3 times

SELECT DISTINCT num AS ConsecutiveNums
FROM (
    SELECT num,
           LEAD(num) OVER(ORDER BY id) AS next_num,
           LAG(num) OVER(ORDER BY id) AS prev_num
    FROM Logs
) t
WHERE num = next_num
AND num = prev_num;