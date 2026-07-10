CREATE VIEW AboveAverageSalaries AS
SELECT name, surname, salary
FROM Employees
WHERE salary > (SELECT AVG(salary)
                FROM Employees);