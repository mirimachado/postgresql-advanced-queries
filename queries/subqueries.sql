-- Customers who spent more than 500
SELECT name FROM customers
WHERE id IN (
    SELECT customer_id FROM orders
    GROUP BY customer_id
    HAVING SUM(total) > 500
);
