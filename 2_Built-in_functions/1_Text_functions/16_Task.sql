SELECT name, 
       surname,
       CONCAT(REPEAT('*', (LOCATE('@', email) - 1)), SUBSTRING(email, LOCATE('@', email))) AS email
FROM Directors
ORDER BY LEFT(email, LOCATE('@', email)) ASC;