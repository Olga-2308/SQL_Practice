SELECT u.name, u.surname
FROM Users u
WHERE EXISTS (SELECT 1
              FROM Purchases p
              WHERE u.id = p.user_id AND p.film_id = (SELECT 1
                                                      FROM Films f
                                                      WHERE f.title LIKE 'Toy Story 2'))
ORDER BY u.name ASC;