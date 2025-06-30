-- Total sales grouped by customer region
SELECT c.region, 
       COUNT(o.order_id) AS order_count, 
       SUM(o.total_amount) AS total_sales
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.region
ORDER BY total_sales DESC;
