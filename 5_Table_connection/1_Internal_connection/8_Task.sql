SELECT e1.name 
FROM Employees e1 INNER JOIN Employees e2 ON e1.manager_id = e2.id
WHERE e1.salary > e2.salary;