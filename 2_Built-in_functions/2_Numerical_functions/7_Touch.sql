SELECT CONCAT(angle, '°') AS x, 
       ROUND(SIN(RADIANS(angle)), 1) AS 'sin(x)', 
       ROUND(COS(RADIANS(angle)), 1) AS 'cos(x)'
FROM Angles
ORDER BY angle ASC;