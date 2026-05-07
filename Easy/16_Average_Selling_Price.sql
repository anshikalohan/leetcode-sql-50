-- Problem: Average Selling Price
-- Link: https://leetcode.com/problems/average-selling-price/
-- Difficulty: Easy

-- Approach:
-- Join Prices and UnitsSold using product_id
-- Match purchase_date within price validity range
-- Compute weighted average:
-- sum(price * units) / sum(units)
-- Use IFNULL to handle division by NULL

SELECT p.product_id,
ROUND(IFNULL(SUM(p.price * u.units) / SUM(u.units), 0), 2) AS average_price
FROM Prices p
LEFT JOIN UnitsSold u
ON p.product_id = u.product_id
AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id;