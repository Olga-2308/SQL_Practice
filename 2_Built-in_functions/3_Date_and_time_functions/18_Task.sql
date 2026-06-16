SELECT name, surname, birth_date
FROM Actors
WHERE TIMESTAMPDIFF(YEAR, birth_date, '2023-10-12') > 51
ORDER BY birth_date DESC;