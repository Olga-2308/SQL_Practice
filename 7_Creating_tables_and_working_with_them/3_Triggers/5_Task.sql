DELIMITER //
CREATE TRIGGER update_avg_rating
AFTER INSERT
ON Reviews
FOR EACH ROW
BEGIN

    UPDATE Products
    SET avg_rating = (SELECT AVG(rating)
                      FROM Reviews
                      WHERE product_id = NEW.product_id)
    WHERE id = NEW.product_id;

END //
DELIMITER ;