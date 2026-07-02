SELECT DISTINCT p.name AS product
FROM Products p 
INNER JOIN Sales s ON p.id = s.product_id;