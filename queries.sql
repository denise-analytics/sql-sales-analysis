-- =========================================
-- CONSULTAS EXPLORATÓRIAS
-- =========================================

SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM orders;
SELECT * FROM order_items;

-- =========================================
-- FILTROS E CONSULTAS SIMPLES
-- =========================================

-- Clientes da cidade de São Paulo
SELECT *
FROM customers
WHERE city = 'São Paulo';

-- Produtos da categoria Eletrônicos
SELECT product_name, price
FROM products
WHERE category = 'Eletrônicos';

-- Produtos com preço acima de 1000
SELECT product_name, price
FROM products
WHERE price > 1000;

-- =========================================
-- AGREGAÇÕES
-- =========================================

-- Número de clientes por cidade
SELECT city, COUNT(*) AS total_clients
FROM customers
GROUP BY city;

-- Total de pedidos por cliente
SELECT customer_id, COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_id;

-- Total de produtos vendidos
SELECT product_id, SUM(quantity) AS total_sold
FROM order_items
GROUP BY product_id;

-- =========================================
-- JOINs ENTRE TABELAS
-- =========================================

-- Pedidos com nome do cliente
SELECT 
    o.order_id,
    o.order_date,
    c.customer_name
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id;

-- Itens do pedido com nome do produto
SELECT 
    oi.order_id,
    p.product_name,
    oi.quantity
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id;

-- =========================================
-- ANÁLISES DE NEGÓCIO
-- =========================================

-- Faturamento total por categoria de produto
SELECT 
    p.category,
    SUM(oi.quantity * p.price) AS total_revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.category
ORDER BY total_revenue DESC;

-- Total gasto por cliente
SELECT 
    c.customer_name,
    SUM(oi.quantity * p.price) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY c.customer_name
ORDER BY total_spent DESC;

-- Volume de pedidos por mês
SELECT 
    strftime('%Y-%m', order_date) AS month,
    COUNT(order_id) AS total_orders
FROM orders
GROUP BY month
ORDER BY month;
