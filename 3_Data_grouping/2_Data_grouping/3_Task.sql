SELECT country, rating, COUNT(rating) AS num_of_directors
FROM Directors
GROUP BY country, rating
ORDER BY num_of_directors ASC, country ASC, rating ASC;