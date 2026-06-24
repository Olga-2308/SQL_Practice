SELECT m1.name, m1.surname
FROM Math m1
WHERE m1.surname = ANY (SELECT m2.surname
                        FROM Math m2
                        WHERE m1.surname = m2.surname AND m1.id != m2.id)
ORDER BY m1.surname ASC, m1.name ASC;