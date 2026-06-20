SELECT QUARTER(birth_date) AS quarter, 
       GROUP_CONCAT(CONCAT(name, ' ', surname) 
       ORDER BY CONCAT(name, ' ', surname) ASC SEPARATOR ', ') AS directors
FROM Directors
GROUP BY QUARTER(birth_date) 
HAVING COUNT(*) > 1;