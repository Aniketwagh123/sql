-- Find customers who have ordered products with a freight value greater than $50 and where the order was delivered late.
SELECT c.customer_id,
    oi.freight_value,
    o.order_delivered_customer_date,
    o.order_estimated_delivery_date
FROM customers c
    JOIN orders o on c.customer_id = o.customer_id
    JOIN order_items oi on oi.order_id = o.order_id
WHERE freight_value > 50
    AND o.order_delivered_customer_date > o.order_estimated_delivery_date
LIMIT 10;