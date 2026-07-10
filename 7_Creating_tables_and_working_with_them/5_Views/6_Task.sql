CREATE VIEW PopularMovies AS
SELECT f.title, COUNT(p.film_id) AS total_purchases
FROM Films f
INNER JOIN Purchases p ON f.id = p.film_id
GROUP BY f.title
HAVING COUNT(p.film_id) >= 3
ORDER BY total_purchases ASC, title ASC;