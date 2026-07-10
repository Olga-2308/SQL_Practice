CREATE VIEW UsersWithEmail AS
SELECT id, name, surname, email
FROM Users
WHERE email IS NOT NULL;