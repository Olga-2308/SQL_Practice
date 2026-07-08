DELETE FROM Purchases
WHERE film_id IN (SELECT id
                 FROM Films
                 WHERE title LIKE 'Toy Story%');

DELETE FROM Films
WHERE title LIKE 'Toy Story%';