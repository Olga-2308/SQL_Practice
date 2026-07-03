SELECT p.name AS product
FROM Products p INNER JOIN Sales s ON p.id = s.product_id
WHERE s.sale_date = '2023-09-12'
GROUP BY p.name
HAVING COUNT(s.product_id) = 1
ORDER BY product ASC;