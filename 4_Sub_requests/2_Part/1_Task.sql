SELECT f1.title
FROM Films f1
WHERE f1.running_time > (SELECT f2.running_time
                         FROM Films f2
                         WHERE f2.show_date = f1.show_date - INTERVAL '1' DAY)
ORDER BY f1.title ASC;