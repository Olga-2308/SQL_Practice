DELIMITER //
CREATE TRIGGER update_product_quantity
AFTER INSERT 
ON Orders
FOR EACH ROW
BEGIN

    UPDATE Products
    SET stock = stock - NEW.quantity
    WHERE id = NEW.product_id;
    
END //
DELIMITER;