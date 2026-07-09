CREATE TABLE Students
(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20) CHECK (name != ''),
    surname VARCHAR(20) CHECK (surname != '')
);

CREATE TABLE Classes
(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20) CHECK (name != '')
);