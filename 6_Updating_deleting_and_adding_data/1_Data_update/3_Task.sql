UPDATE Grades
SET grade = CASE WHEN grade = 'A' THEN 'Great'
                 WHEN grade = 'B' THEN 'Great'
                 WHEN grade = 'C' THEN 'Well'
                 WHEN grade = 'D' THEN 'Bad'
                 WHEN grade = 'E' THEN 'Bad' END;