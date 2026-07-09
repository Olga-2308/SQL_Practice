ALTER TABLE Students
ADD CHECK (CHAR_LENGTH(name) >= 2);

ALTER TABLE Students
ADD CHECK (CHAR_LENGTH(surname) >= 2);

ALTER TABLE Students
ADD CHECK (age > 0);