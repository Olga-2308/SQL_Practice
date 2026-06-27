SELECT u.name, u.surname
FROM Users u
WHERE NOT EXISTS (SELECT 1
                  FROM Purchases p
                  WHERE u.id = p.user_id);
