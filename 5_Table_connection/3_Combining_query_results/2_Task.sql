SELECT '[0-5)' AS session_duration, COUNT(id) AS total
FROM Sessions
WHERE (duration / 60) >= 0 AND (duration / 60) < 5

UNION ALL

SELECT '[5-10)' AS session_duration, COUNT(id) AS total
FROM Sessions
WHERE (duration / 60) >= 5 AND (duration / 60) < 10

UNION ALL

SELECT '[10-15)' AS session_duration, COUNT(id) AS total
FROM Sessions
WHERE (duration / 60) >= 10 AND (duration / 60) < 15

UNION ALL

SELECT '15 or more' AS session_duration, COUNT(id) AS total
FROM Sessions
WHERE (duration / 60) >= 15;

