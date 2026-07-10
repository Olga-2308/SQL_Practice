DELIMITER //
CREATE TRIGGER phone_number_formatting
BEFORE UPDATE
ON Users
FOR EACH ROW
BEGIN
    SET NEW.phone_number = CONCAT('+7', REPLACE(SUBSTRING(NEW.phone_number, 3), ' ', ''));   
END //
DELIMITER ;


DELIMITER //
CREATE TRIGGER add_new_phone_number
BEFORE INSERT
ON Users
FOR EACH ROW
BEGIN
    SET NEW.phone_number = CONCAT('+7', REPLACE(SUBSTRING(NEW.phone_number, 3), ' ', ''));
END //
DELIMITER ;