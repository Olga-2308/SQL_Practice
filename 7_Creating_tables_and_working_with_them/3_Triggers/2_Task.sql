DELIMITER //
CREATE TRIGGER salary_minimum
BEFORE INSERT
ON Employees
FOR EACH ROW
BEGIN
    SET NEW.salary = IF(NEW.salary < 1000, 1000, NEW.salary);  
END //  
DELIMITER ;