-- Get the delivery delay for each order where the delay is greater than 5 days.
SELECT c.customer_id,
    TIMESTAMPDIFF(
        DAY,
        STR_TO_DATE(
            o.order_delivered_customer_date,
            '%Y-%m-%d %H:%i:%s'
        ),
        STR_TO_DATE(
            o.order_estimated_delivery_date,
            '%Y-%m-%d %H:%i:%s'
        )
    ) AS `order delay`
FROM orders o
    JOIN customers c ON o.customer_id = c.customer_id
WHERE TIMESTAMPDIFF(
        DAY,
        STR_TO_DATE(
            o.order_delivered_customer_date,
            '%Y-%m-%d %H:%i:%s'
        ),
        STR_TO_DATE(
            o.order_estimated_delivery_date,
            '%Y-%m-%d %H:%i:%s'
        )
    ) > 5
LIMIT 100;