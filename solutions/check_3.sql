USE sql_join;

CREATE TABLE student(
    s_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    s_name VARCHAR(20),
    is_brilliant BOOLEAN
);

CREATE TABLE teacher(
    t_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    t_name VARCHAR(20),
    is_tenured BOOLEAN
);

CREATE TABLE student_teacher(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    student_id  INT ,
    teacher_id  INT,
    FOREIGN KEY(student_id) REFERENCES student(s_id),
    FOREIGN KEY(teacher_id) REFERENCES teacher(t_id)
);

-- INSERT INTO Student VALUES (1, 'Ryan', 1); -- note the use of 1 for TRUE
-- INSERT INTO Student VALUES (2, 'Leo', 1); 
-- INSERT INTO Student VALUES (3, 'Ernie', 0); -- and 0 for FALSE in SQL

-- INSERT INTO Teacher VALUES (1, 'Levine', 1);
-- INSERT INTO Teacher VALUES (2, 'Foster', 0);
-- INSERT INTO Teacher VALUES (3, 'Schwimmer', 0);

-- INSERT INTO student_teacher VALUES (NULL, 1, 1);
-- INSERT INTO student_teacher VALUES (NULL, 1, 2);
-- INSERT INTO student_teacher VALUES (NULL, 2, 1);
-- INSERT INTO student_teacher VALUES (NULL, 2, 2);
-- INSERT INTO student_teacher VALUES (NULL, 2, 3);
-- INSERT INTO student_teacher VALUES (NULL, 3, 1);

-- SELECT * FROM student_teacher