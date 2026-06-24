SELECT m1.name, m1.surname, m1.grade
FROM Math m1
WHERE m1.grade > (SELECT AVG(m2.grade)
                  FROM Math m2
                  WHERE m2.id < m1.id)
ORDER BY m1.grade ASC, m1.name ASC;