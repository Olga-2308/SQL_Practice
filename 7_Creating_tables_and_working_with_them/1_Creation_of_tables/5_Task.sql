CREATE TABLE Students
(
    id INT UNIQUE NOT NULL,
    name VARCHAR(20) NOT NULL,
    surname VARCHAR(20) NOT NULL,
    age INT DEFAULT 18,
    date_of_receipt DATE DEFAULT (CURDATE())
);