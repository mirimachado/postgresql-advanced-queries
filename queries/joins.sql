-- Inner Join: Customers and their orders
SELECT c.name, o.order_id, o.total
FROM customers c
INNER JOIN orders o ON c.id = o.customer_id;

-- Left Join: All customers and their orders
SELECT c.name, o.order_id, o.total
FROM customers c
LEFT JOIN orders o ON c.id = o.customer_id;

-- Full Join: All customers and orders
SELECT c.name, o.order_id, o.total
FROM customers c
FULL JOIN orders o ON c.id = o.customer_id;
