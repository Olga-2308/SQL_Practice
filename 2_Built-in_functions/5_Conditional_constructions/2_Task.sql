SELECT name, surname,
    CASE 
        WHEN grade = 'A' OR grade = 'B' THEN 'Great'
        WHEN grade = 'C' THEN 'Well'
        ELSE 'Bad'
    END AS result
FROM Math
ORDER BY grade ASC, name ASC;