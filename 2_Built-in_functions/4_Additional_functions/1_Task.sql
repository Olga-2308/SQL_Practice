SELECT name, surname, 
       IF(country LIKE 'England', 'England', 'Other country') AS country
FROM Directors
ORDER BY name ASC;