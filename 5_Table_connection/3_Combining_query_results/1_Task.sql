SELECT 'Mathematician' AS profession, COUNT(*) AS total
FROM Mathematicians

UNION ALL 

SELECT 'Physicist' AS profession, COUNT(*) AS total
FROM Physicists

UNION ALL

SELECT 'Programmer' AS profession, COUNT(*) AS total
FROM Programmers;
