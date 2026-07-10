CREATE VIEW NoMinMaxStudents AS
SELECT group_id
FROM Students
GROUP BY group_id
HAVING COUNT(id) != (SELECT COUNT(id) 
                     FROM Students 
                     GROUP BY group_id 
                     ORDER BY COUNT(id) 
                     DESC 
                     LIMIT 1)
                     
    AND COUNT(id) != (SELECT COUNT(id) 
                      FROM Students 
                      GROUP BY group_id 
                      ORDER BY COUNT(id) ASC 
                      LIMIT 1);