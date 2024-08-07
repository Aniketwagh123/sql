-- Find the product with the highest total price across all orders, sorted by total price.
SELECT p.product_id,
    sum(oi.price) as total
from products p
    JOIN order_items oi on p.product_id = oi.product_id
GROUP BY product_id
ORDER BY total DESC
LIMIT 1;