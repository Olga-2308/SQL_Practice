CREATE TABLE Students
(
    id INT UNIQUE NOT NULL,
    name VARCHAR(20) CHECK (name != '') NOT NULL,
    surname VARCHAR(20) CHECK (surname != '') NOT NULL,
    age INT CHECK (age >= 18) DEFAULT 18,
    date_of_receipt DATE CHECK (date_of_receipt >= '2023-09-01') DEFAULT (CURDATE()),
    phone_number VARCHAR(20) CHECK (phone_number LIKE '7 (___) ___-__-__' OR phone_number LIKE '8 (___) ___-__-__')
);