
-- Create Database
CREATE DATABASE schooldb;
USE schooldb;

-- Table: students
CREATE TABLE students (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50),
  course_id INT,
  marks INT
);

INSERT INTO students (name, course_id, marks) VALUES
('Asha Gale', 1, 85),
('Isaac Miles', 2, 92),
('Sarah Kim', 3, 78),
('Brian Otieno', NULL, 67);

-- Table: courses
CREATE TABLE courses (
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(50)
);

INSERT INTO courses (title) VALUES
('Database Systems'),
('Web Development'),
('Networking'),
('Data Structures');

-- Table: fees
CREATE TABLE fees (
  id INT PRIMARY KEY AUTO_INCREMENT,
  student_id INT,
  amount DECIMAL(10,2),
  FOREIGN KEY (student_id) REFERENCES students(id)
);

INSERT INTO fees (student_id, amount) VALUES
(1, 6000),
(2, 4500),
(3, 7000);

-- Table: attendance
CREATE TABLE attendance (
  id INT PRIMARY KEY AUTO_INCREMENT,
  student_id INT,
  status VARCHAR(10),
  FOREIGN KEY (student_id) REFERENCES students(id)
);

INSERT INTO attendance (student_id, status) VALUES
(1, 'Present'),
(2, 'Absent'),
(3, 'Present'),
(4, 'Absent');
 SELECT * FROM students;
 select * from courses;
select * from fees;
  select * from attendance;
-- Sample JOIN queries

SELECT students.name, courses.title
FROM students
INNER JOIN courses ON students.course_id = courses.id;

SELECT students.name, courses.title
FROM students
LEFT JOIN courses ON students.course_id = courses.id;

SELECT students.name, courses.title
FROM students
RIGHT JOIN courses ON students.course_id = courses.id;
--MYSQL does not support FULL JOIN or FULL OUTER JOIN directly, so we use UNION of LEFT and RIGHT JOIN
SELECT students.name, courses.title
FROM students
LEFT JOIN courses ON students.course_id = courses.id
UNION
SELECT students.name, courses.title
FROM students
RIGHT JOIN courses ON students.course_id = courses.id;

-- Sample Subquery
SELECT name FROM students
WHERE id IN (SELECT student_id FROM fees WHERE amount > 5000);
--Single-Row Subquery
SELECT name FROM students
WHERE marks = (SELECT MAX(marks) FROM students);
--Multiple-Row Subquery
SELECT name FROM students
WHERE id IN (SELECT student_id FROM attendance WHERE status = 'Absent');
--Correlated Subquery
SELECT name FROM students s
WHERE marks > (
  SELECT AVG(marks)
  FROM students
  WHERE course_id = s.course_id
);
