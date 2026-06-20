SELECT LEFT(name, 1) AS letter, 
       COUNT(*) AS num_of_names  
FROM Directors
GROUP BY LEFT(name, 1)            
ORDER BY num_of_names ASC, letter ASC;