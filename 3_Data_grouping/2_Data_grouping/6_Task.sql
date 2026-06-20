SELECT country, AVG(rating) AS avg_rating
FROM Directors
WHERE rating > 10 AND rating < 90
GROUP BY country
ORDER BY avg_rating ASC;