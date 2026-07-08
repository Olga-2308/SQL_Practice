UPDATE Grades g INNER JOIN Classes c ON g.class_id = c.id
SET g.grade = NULL
WHERE g.date_of_receipt = '2023-07-26' AND c.name = 'Biology';