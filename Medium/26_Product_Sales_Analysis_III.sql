-- Problem: Product Sales Analysis III
-- Link: https://leetcode.com/problems/product-sales-analysis-iii/
-- Difficulty: Medium

-- Approach:
-- Find earliest year per product using MIN(year)
-- Filter rows matching (product_id, first_year)

SELECT product_id,
year AS first_year,
quantity,
price
FROM Sales
WHERE (product_id, year) IN (
    SELECT product_id, MIN(year)
    FROM Sales
    GROUP BY product_id
);