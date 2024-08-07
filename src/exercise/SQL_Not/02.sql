-- List customers who have not made any orders.SELECT customer_id
SELECT *
FROM customers c
    LEFT JOIN orders o on c.customer_id = o.customer_id
WHERE o.customer_id IS NULL
LIMIT 10;