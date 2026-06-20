SELECT country, AVG(rating) AS avg_rating
FROM Directors
WHERE rating > 30 AND rating < 70
GROUP BY country
HAVING AVG(rating) < 60 
ORDER BY avg_rating ASC;