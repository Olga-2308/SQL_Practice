SELECT name, surname,
    CASE
        WHEN (HOUR(time) * 60 + MINUTE(time)) > 60 THEN 0
        WHEN (HOUR(time) * 60 + MINUTE(time)) <= 30 THEN 100
        ELSE 100 - ((HOUR(time) * 60 + MINUTE(time)) - 30)
    END AS score
FROM Results
ORDER BY score DESC, name ASC, surname ASC;