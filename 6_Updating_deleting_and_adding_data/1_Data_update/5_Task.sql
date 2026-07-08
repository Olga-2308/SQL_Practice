UPDATE Grades g INNER JOIN Students s ON g.student_id = s.id
INNER JOIN Classes c ON g.class_id = c.id
SET g.grade = 5
WHERE s.student = 'Mary Jane' AND c.name = 'Math';