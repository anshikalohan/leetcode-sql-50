-- Problem: Immediate Food Delivery II
-- Link: https://leetcode.com/problems/immediate-food-delivery-ii/
-- Difficulty: Medium

-- Approach:
-- Consider only each customer's first order
-- Identify if it was immediate (order_date = preferred date)
-- Calculate percentage of such orders

SELECT
    ROUND(
        SUM(CASE 
            WHEN order_date = customer_pref_delivery_date THEN 1 
            ELSE 0 
        END) * 100 / COUNT(*), 
    2) AS immediate_percentage
FROM Delivery
WHERE (customer_id, order_date) IN (
    SELECT customer_id, MIN(order_date)
    FROM Delivery
    GROUP BY customer_id
);