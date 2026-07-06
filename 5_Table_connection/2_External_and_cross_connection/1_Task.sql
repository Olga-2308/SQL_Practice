SELECT p.name AS product
FROM Products p
LEFT OUTER JOIN Sales s ON p.id = s.product_id
GROUP BY p.name
HAVING COUNT(s.product_id) = 0;