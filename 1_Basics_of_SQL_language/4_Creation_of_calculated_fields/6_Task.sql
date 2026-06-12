SELECT CONCAT(id, '. ', title) AS movie, 
       CONCAT('€', price * 1.1) AS price_in_eur, 
       CONCAT(rating * 10, '%') AS score
FROM Films
WHERE rating > 7
ORDER BY rating DESC;