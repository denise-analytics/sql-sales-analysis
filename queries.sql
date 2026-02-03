SELECT * FROM customers;

SELECT * FROM products;

SELECT order_id, order_date
FROM orders;

SELECT order_id, product_id, quantity
FROM order_items;

SELECT *
FROM customers
WHERE city = 'São Paulo';

SELECT product_name, price
FROM products
WHERE category = 'Eletrônicos';

SELECT product_name, price
FROM products
WHERE price > 1000;

SELECT city, COUNT(*) AS total_clients
FROM customers
GROUP BY city;

SELECT customer_id, COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_id;

SELECT product_id, SUM(quantity) AS total_sold
FROM order_items
GROUP BY product_id;

SELECT 
    o.order_id,
    o.order_date,
    c.customer_name
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id;

SELECT 
    oi.order_id,
    p.product_name,
    oi.quantity
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id;

SELECT 
    o.order_id,
    c.customer_name,
    p.product_name,
    oi.quantity
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id;

SELECT 
    p.category,
    SUM(oi.quantity * p.price) AS total_revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.category
ORDER BY total_revenue DESC;

SELECT 
    c.customer_name,
    SUM(oi.quantity * p.price) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY c.customer_name
ORDER BY total_spent DESC;

SELECT 
    strftime('%Y-%m', order_date) AS month,
    COUNT(order_id) AS total_orders
FROM orders
GROUP BY month
ORDER BY month;

