SELECT title, director
FROM Films
WHERE title NOT LIKE CONVERT('%t%', BINARY)
ORDER BY title ASC;