SELECT p.name AS product, 
    CONCAT(SUM(IF(s.id IS NULL, 0, p.price)), '€') AS amount
FROM Sales s
RIGHT OUTER JOIN Products p ON s.product_id = p.id
GROUP BY p.name;