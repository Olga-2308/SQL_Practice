SELECT director
FROM Films
GROUP BY director
HAVING MAX(running_time) > (SELECT MIN(running_time)
                            FROM Films)
ORDER BY director ASC;