SELECT name, surname,
    CASE grade
        WHEN 'A' THEN 5
        WHEN 'B' THEN 4
        WHEN 'C' THEN 3
        WHEN 'D' THEN 2
        WHEN 'E' THEN 1
    END AS grade
FROM Math
ORDER BY grade DESC, name ASC;