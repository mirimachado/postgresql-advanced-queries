# Advanced SQL Examples (PostgreSQL)

This repository contains advanced SQL queries demonstrating my experience with databases and PostgreSQL.  
It includes examples of:

- Complex Joins
- Subqueries
- Window Functions
- Common Table Expressions (CTEs and recursive queries)
- Data imports and transformations

## Getting Started
1. Run the script in `scripts/create_tables.sql` to create the example schema.
2. Explore queries in the `queries/` folder.
3. Test them directly in PostgreSQL using psql, pgAdmin, or DBeaver.

## Example
```sql
-- Retrieve the top 5 customers with the highest total order value
SELECT c.name, SUM(o.total) as total_spent
FROM customers c
JOIN orders o ON c.id = o.customer_id
GROUP BY c.name
ORDER BY total_spent DESC
LIMIT 5;
```
