CREATE VIEW LowStockProducts AS 
SELECT name, stock
FROM Products
WHERE stock < 10;