SELECT name, surname, REPLACE(email, 'outlook.com', 'pen.com') AS email
FROM Directors
WHERE email LIKE '%outlook.com'
ORDER BY email ASC;
