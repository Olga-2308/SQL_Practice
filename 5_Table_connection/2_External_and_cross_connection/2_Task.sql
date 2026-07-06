SELECT p.name AS product,
    IFNULL(MIN(sale_date), 'Not sold') AS first_sale
FROM Products p
LEFT OUTER JOIN Sales s ON p.id = s.product_id
GROUP BY p.name;