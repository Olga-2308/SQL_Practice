SELECT title 
FROM Films 
WHERE title != 'WALL-E' 
      AND running_time = (SELECT running_time
                          FROM Films
                          WHERE title = 'WALL-E')
ORDER BY title ASC;