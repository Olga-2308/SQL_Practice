SELECT m1.name, m1.surname, m1.grade
FROM Math m1
WHERE m1.grade IN (SELECT m2.grade
                  FROM Math m2
                  WHERE (m1.id = m2.id - 1) OR (m1.id = m2.id + 1))
ORDER BY m1.name ASC;