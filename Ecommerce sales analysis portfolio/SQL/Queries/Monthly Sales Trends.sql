-- Monthly sales totals across the year
SELECT 
  strftime('%Y-%m', order_date) AS month,
  SUM(total_amount) AS total_sales,
  COUNT(*) AS order_count,
  ROUND(AVG(total_amount), 2) AS avg_order_value
FROM orders
GROUP BY strftime('%Y-%m', order_date)
ORDER BY month;