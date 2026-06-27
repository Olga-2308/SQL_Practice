SELECT u.name, u.surname
FROM Users u
WHERE (SELECT COUNT(p.user_id)
       FROM Purchases p
       WHERE u.id = p.user_id) = 2
ORDER BY u.name ASC;