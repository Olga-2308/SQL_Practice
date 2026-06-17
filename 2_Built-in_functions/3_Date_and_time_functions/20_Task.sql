SELECT name, surname,
       DATE_FORMAT(birth_date, '%d.%m.%Y') AS birth_date,
       DATE_FORMAT(birth_time, '%H:%i') AS birth_time
FROM Actors
WHERE DAY(birth_date) >= 1 AND DaY(birth_date) <= 14;