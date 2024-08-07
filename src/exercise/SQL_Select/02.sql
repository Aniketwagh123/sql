-- Find the top 3 sellers based on the total freight value of the items they sold.
SELECT sl.seller_id,
    sum(freight_value) as fsum
from order_items oi
    JOIN sellers sl on oi.seller_id = sl.seller_id
GROUP BY seller_id
ORDER BY fsum DESC
limit 3;