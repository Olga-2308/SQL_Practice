SELECT f.title, f.director
FROM Films f
WHERE EXISTS (SELECT 1
             FROM Purchases p
             WHERE f.id = p.film_id)
ORDER BY f.title ASC;