-- List customers who have ordered products that were delivered late (i.e., delivered after the estimated delivery date).
SELECT c.customer_id,
    TIMESTAMPDIFF(
        DAY,
        STR_TO_DATE(
            o.order_estimated_delivery_date,
            '%Y-%m-%d %H:%i:%s'
        ),
        STR_TO_DATE(
            o.order_delivered_customer_date,
            '%Y-%m-%d %H:%i:%s'
        )
    ) AS datedifval
FROM orders o
    JOIN customers c ON o.customer_id = c.customer_id
WHERE TIMESTAMPDIFF(
        DAY,
        STR_TO_DATE(
            o.order_estimated_delivery_date,
            '%Y-%m-%d %H:%i:%s'
        ),
        STR_TO_DATE(
            o.order_delivered_customer_date,
            '%Y-%m-%d %H:%i:%s'
        )
    ) < 0
LIMIT 100;