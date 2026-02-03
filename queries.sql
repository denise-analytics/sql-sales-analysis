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
