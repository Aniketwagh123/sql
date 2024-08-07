-- List all product categories and their total freight value, sorted by total freight value in descending order.
SELECT p.product_category_name,
    sum(freight_value)
FROM order_items oi
    JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_category_name
ORDER BY sum(freight_value) DESC
LIMIT 100;