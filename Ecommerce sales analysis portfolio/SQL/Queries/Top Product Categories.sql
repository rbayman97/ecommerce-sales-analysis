-- Top-selling product categories by revenue
SELECT category,
       SUM(quantity * unit_price) AS total_revenue,
       SUM(quantity) AS total_units_sold
FROM products
GROUP BY category
ORDER BY total_revenue DESC;
