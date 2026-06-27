SELECT COUNT(*) AS num_of_users
FROM Users u
WHERE EXISTS (SELECT 1
              FROM Purchases p
              WHERE u.id = p.user_id AND p.film_id = (SELECT f.id
                                                      FROM Films f
                                                      WHERE f.title = 'Toy Story 2'));