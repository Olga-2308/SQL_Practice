SELECT 'bee' AS word, count(file_name) AS count
FROM Files
WHERE content LIKE '% bee %' 
   OR content LIKE 'bee %' 
   OR content LIKE '% bee' 
   OR content LIKE 'bee'
   
UNION ALL

SELECT 'geek' AS word, count(file_name) AS count
FROM Files
WHERE content LIKE '% geek %' 
   OR content LIKE 'geek %' 
   OR content LIKE '% geek' 
   OR content LIKE 'geek';
