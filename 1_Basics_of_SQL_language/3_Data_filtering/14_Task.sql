SELECT title, director, running_time
FROM Films
WHERE director IN ('John L', 'Andrew S') AND running_time > 100
ORDER BY director ASC, title ASC;