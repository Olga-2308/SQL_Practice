SELECT u.name, u.surname
FROM Users u
WHERE (SELECT COUNT(*)
       FROM Purchases p
       WHERE p.user_id = u.id) = (SELECT COUNT(*)
                                  FROM Purchases p
                                  GROUP BY p.user_id
                                  ORDER BY COUNT(*) DESC
                                  LIMIT 1);