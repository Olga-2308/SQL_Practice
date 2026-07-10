CREATE VIEW CategorySalesSummary AS
SELECT p.category, SUM(p.price * IFNULL(o.quantity, 0)) AS total
FROM Products p
LEFT JOIN Orders o ON p.id = o.product_id
GROUP BY category;