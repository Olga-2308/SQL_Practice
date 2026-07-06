SELECT c.name AS category,
   CONCAT(IFNULL(ROUND(AVG(p.price), 0), 0), '€') AS avg_amount
FROM Products p
RIGHT OUTER JOIN Sales s ON p.id = s.product_id
RIGHT OUTER JOIN Categories c ON p.category_id = c.id
GROUP BY c.name