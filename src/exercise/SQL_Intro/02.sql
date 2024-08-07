-- Get the total number of items sold for each product category with catagory name in english.
SELECT pt.product_category_name_english,
    p.product_category_name,
    COUNT(order_item_id)
FROM order_items oi
    JOIN products p on oi.product_id = p.product_id
    JOIN product_category_name_translation pt on p.product_category_name = pt.product_category_name
GROUP BY pt.product_category_name_english,
    p.product_category_name
LIMIT 500;