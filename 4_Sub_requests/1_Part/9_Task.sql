SELECT SUM(running_time = (SELECT MIN(running_time) 
                           FROM Films)) AS shortest_films,
                        
       SUM(running_time = (SELECT MAX(running_time) 
                           FROM Films)) AS longest_films
FROM Films;