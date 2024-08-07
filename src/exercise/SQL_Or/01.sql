-- List orders where the payment value is either above $500 or the freight value is greater than $100.
SELECT op.order_id,
    oi.freight_value,
    op.payment_value
FROM order_payments op
    JOIN order_items oi ON op.order_id = oi.order_id
WHERE op.payment_value > 500
    OR oi.freight_value > 100
LIMIT 10;