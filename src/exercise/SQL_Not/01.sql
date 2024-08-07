-- Find products that have not been ordered yet.
SELECT p.product_id FROM products p
LEFT JOIN order_items oi
on p.product_id = oi.product_id
WHERE oi.product_id IS NULL
LIMIT 100;


-- SELECT * FROM products where product_category_name='demo';
-- INSERT INTO products (product_id, product_category_name) VALUES ('ancdemo', 'demo');