DELETE FROM Purchases 
WHERE user_id = (SELECT id 
                 FROM Users 
                 WHERE user = 'Matt Damon');

DELETE FROM Users
WHERE user = 'Matt Damon';