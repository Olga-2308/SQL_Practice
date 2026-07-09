ALTER TABLE Students
ADD COLUMN name VARCHAR(20) AFTER id;

ALTER TABLE Students
ADD COLUMN surname VARCHAR(20) AFTER name;

UPDATE  Students
SET name = LEFT(fullname, LOCATE(' ', fullname) - 1),
    surname = SUBSTRING(fullname, LOCATE(' ', fullname) + 1);

ALTER TABLE Students
DROP COLUMN fullname;