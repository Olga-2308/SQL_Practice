SELECT c.name AS category
FROM Products p INNER JOIN Categories c ON c.id = p.category_id
                INNER JOIN Sales s ON p.id = s.product_id
GROUP BY c.name
ORDER BY SUM(p.price) DESC
LIMIT 1;