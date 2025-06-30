SELECT c.name, 
       COUNT(o.order_id) AS total_orders,
       ROUND(SUM(CAST(REPLACE(o.total_amount, '$', '') AS REAL)), 2) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name
ORDER BY total_spent DESC
LIMIT 10;