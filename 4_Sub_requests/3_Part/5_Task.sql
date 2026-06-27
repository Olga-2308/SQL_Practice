SELECT u.name, u.surname, 
    (SELECT COUNT(*) 
     FROM Purchases p 
     WHERE p.user_id = u.id) AS num_of_films
FROM Users u
ORDER BY num_of_films DESC, u.name ASC;