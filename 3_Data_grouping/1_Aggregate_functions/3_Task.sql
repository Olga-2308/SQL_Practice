SELECT COUNT(id) AS num_of_rated_usa_directors
FROM Directors
WHERE country LIKE 'USA' AND rating > 50;