SELECT name, surname, 
        LEFT(email, LOCATE('@', email) - 1) AS local_part, 
        SUBSTRING_INDEX(email, '@', -1) AS domain
FROM Directors
ORDER BY name ASC;