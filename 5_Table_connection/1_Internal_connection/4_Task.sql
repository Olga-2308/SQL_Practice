SELECT p.name AS bestseller
FROM Products p INNER JOIN Sales s ON p.id = s.product_id
WHERE s.sale_date = '2023-09-12'
GROUP BY s.product_id
ORDER BY COUNT(*) DESC
LIMIT 1;