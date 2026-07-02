SELECT p.name AS product,
        CONCAT(SUM(p.price), '€') AS amount
FROM Products p INNER JOIN Sales s ON p.id = s.product_id
GROUP BY p.name;