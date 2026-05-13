-- Problem: Product Price at a Given Date
-- Link: https://leetcode.com/problems/product-price-at-a-given-date/
-- Difficulty: Medium

-- Approach:
-- Find latest price change before or on 2019-08-16
-- Use ROW_NUMBER to select latest valid record
-- Products with no updates before date get default price 10

SELECT product_id,
       new_price AS price
FROM (
    SELECT product_id,
           new_price,
           ROW_NUMBER() OVER(
               PARTITION BY product_id
               ORDER BY change_date DESC
           ) AS rnk
    FROM Products
    WHERE change_date <= '2019-08-16'
) t
WHERE rnk = 1

UNION

SELECT product_id,
       10 AS price
FROM Products
GROUP BY product_id
HAVING MIN(change_date) > '2019-08-16';