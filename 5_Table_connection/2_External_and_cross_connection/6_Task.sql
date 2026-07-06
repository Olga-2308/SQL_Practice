SELECT CONCAT(m.name, ', ', d.name) AS combo,
       CONCAT((m.price + d.price), '€') AS price
FROM Meals m, Drinks d
ORDER BY (m.price + d.price) ASC, m.name ASC, d.name ASC;