SELECT m1.name, m1.surname, m1.grade
FROM Math m1
WHERE m1.grade = (SELECT m2.grade
                  FROM Math m2
                  GROUP BY m2.grade
                  ORDER BY COUNT(m2.grade) DESC
                  LIMIT 1)
ORDER BY m1.name ASC;