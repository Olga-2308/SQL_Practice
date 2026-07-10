DELIMITER //
CREATE TRIGGER update_total_spending
AFTER INSERT
ON Purchases
FOR EACH ROW
BEGIN

    UPDATE Users
    SET total_spending = total_spending + (SELECT price
                                           FROM Films
                                           WHERE id = NEW.film_id)
    WHERE id = NEW.user_id;

END //
DELIMITER ;