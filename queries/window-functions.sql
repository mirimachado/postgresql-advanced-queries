-- Ranking customers by total spent
SELECT c.name,
       SUM(o.total) AS total_spent,
       RANK() OVER (ORDER BY SUM(o.total) DESC) AS rank
FROM customers c
JOIN orders o ON c.id = o.customer_id
GROUP BY c.name;
