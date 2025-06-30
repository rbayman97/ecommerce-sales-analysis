-- Percentage of orders that used a discount vs. full price
SELECT 
  CASE 
    WHEN discount_percent > 0 THEN 'Discounted'
    ELSE 'Full Price'
  END AS pricing_type,
  COUNT(*) AS order_count,
  ROUND(100.0 * COUNT(*) / (SELECT COUNT(*) FROM orders), 2) AS percentage
FROM orders
GROUP BY pricing_type;