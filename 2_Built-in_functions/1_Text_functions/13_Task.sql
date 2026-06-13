SELECT
    CONCAT(UPPER(SUBSTRING(name, 1, 1)), SUBSTRING(name, 2)) AS name,
    CONCAT(UPPER(SUBSTRING(surname, 1, 1)), SUBSTRING(surname, 2)) AS surname
FROM Directors
WHERE BINARY name = LOWER(name) OR BINARY surname = LOWER(surname)
ORDER BY name ASC;