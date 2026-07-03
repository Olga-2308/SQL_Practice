SELECT s.id AS sale_id, s.sale_date, p.name AS product, c.name AS category
FROM Products p 
INNER JOIN Categories c ON c.id = p.category_id
INNER JOIN Sales s ON p.id = s.product_id;