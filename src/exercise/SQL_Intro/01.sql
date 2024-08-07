-- Retrieve the average payment value for each payment type.

SELECT payment_type, AVG(payment_value)
FROM order_payments
GROUP BY payment_type
LIMIT 10;
