INSERT INTO customers (customer_id, customer_name, city, state) VALUES
(1, 'Ana Silva', 'São Paulo', 'SP'),
(2, 'Bruno Costa', 'Rio de Janeiro', 'RJ'),
(3, 'Carla Mendes', 'Belo Horizonte', 'MG'),
(4, 'Daniel Souza', 'São Paulo', 'SP');

INSERT INTO products (product_id, product_name, category, price) VALUES
(1, 'Notebook', 'Eletrônicos', 3500.00),
(2, 'Smartphone', 'Eletrônicos', 2500.00),
(3, 'Cadeira Gamer', 'Móveis', 900.00),
(4, 'Fone de Ouvido', 'Acessórios', 200.00);

INSERT INTO orders (order_id, customer_id, order_date) VALUES
(1, 1, '2023-01-10'),
(2, 2, '2023-01-12'),
(3, 1, '2023-02-05'),
(4, 3, '2023-02-20');

INSERT INTO order_items (order_item_id, order_id, product_id, quantity) VALUES
(1, 1, 1, 1),
(2, 1, 4, 2),
(3, 2, 2, 1),
(4, 3, 3, 1),
(5, 4, 4, 3);

