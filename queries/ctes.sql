-- CTE: Average order per customer
WITH customer_totals AS (
    SELECT customer_id, SUM(total) AS total_spent
    FROM orders
    GROUP BY customer_id
)
SELECT c.name, ct.total_spent
FROM customer_totals ct
JOIN customers c ON c.id = ct.customer_id;
