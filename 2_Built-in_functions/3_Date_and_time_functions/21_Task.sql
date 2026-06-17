SELECT name, surname, 
       CONCAT((DATE_FORMAT(birth_date, '%d %M %Y')), ', ', 
             (DATE_FORMAT(birth_time, '%H:%i'))) AS birth_datetime
FROM Actors
WHERE YEAR(birth_date) <= 1975 AND YEAR(birth_date) >= 1969;