UPDATE Grades
SET grade = 5
WHERE student_id = (SELECT id
                    FROM Students
                    WHERE student = 'Peter Parker');