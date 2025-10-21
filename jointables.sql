

SELECT 
    o.order_id,
    o.order_date,
    c.customer_name,
    c.region,
    p.product_name,
    p.category,
    o.quantity,
    o.price,
    convert(decimal, o.quantity) * o.price AS total_sales
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON o.product_id = p.product_id;
