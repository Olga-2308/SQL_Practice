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

CREATE TABLE Grades
(
    student_id INT,
    class_id INT,
    grade INT CHECK (grade BETWEEN 1 AND 5),
    PRIMARY KEY (student_id, class_id),
    FOREIGN KEY (student_id) REFERENCES Students (id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    FOREIGN KEY (class_id) REFERENCES Classes (id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);