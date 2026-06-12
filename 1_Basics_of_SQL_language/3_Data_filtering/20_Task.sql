SELECT DISTINCT director 
FROM Films
WHERE director LIKE '% S%' AND director LIKE '%n'
ORDER BY director ASC;