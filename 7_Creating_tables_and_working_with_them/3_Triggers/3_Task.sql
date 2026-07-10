DELIMITER //
CREATE TRIGGER update_email
AFTER UPDATE
ON Users
FOR EACH ROW
BEGIN

    INSERT INTO UsersEmailHistory (user_id, old_email, new_email, updated_on)
    VALUES (OLD.id, OLD.email, NEW.email, NOW());

END //
DELIMITER ;