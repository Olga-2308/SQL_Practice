SELECT MONTHNAME(order_date) AS month,
    SUM(CASE WHEN invoice > 20 THEN 1 END) AS order_count,
    COUNT(DISTINCT CASE WHEN invoice > 20 THEN customer_id END) AS customer_count
FROM Orders
GROUP BY MONTHNAME(order_date);