-- Drop tables if exist
DROP TABLE IF EXISTS customers, orders, products, order_items CASCADE;

-- Customers
CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100)
);

-- Products
CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    price DECIMAL(10,2)
);

-- Orders
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(id),
    order_date DATE,
    total DECIMAL(10,2)
);

-- Order Items
CREATE TABLE order_items (
    id SERIAL PRIMARY KEY,
    order_id INT REFERENCES orders(order_id),
    product_id INT REFERENCES products(id),
    quantity INT
);

-- Sample Data
INSERT INTO customers (name, email) VALUES
('Alice', 'alice@email.com'),
('Bob', 'bob@email.com'),
('Carol', 'carol@email.com');

INSERT INTO products (name, price) VALUES
('Laptop', 2000.00),
('Headphones', 200.00),
('Mouse', 50.00);

INSERT INTO orders (customer_id, order_date, total) VALUES
(1, '2024-01-10', 2050.00),
(2, '2024-01-12', 200.00),
(1, '2024-01-15', 50.00);

INSERT INTO order_items (order_id, product_id, quantity) VALUES
(1, 1, 1), -- Alice buys Laptop
(1, 3, 1), -- Alice buys Mouse
(2, 2, 1), -- Bob buys Headphones
(3, 3, 1); -- Alice buys Mouse
