-- List all products with their category names and the number of times they have been ordered.
SELECT p.product_category_name,
    COUNT(order_item_id)
FROM order_items oi
    JOIN products p on oi.product_id = p.product_id
GROUP BY p.product_category_name
LIMIT 500;