--expressions and constraints
--indexing: clustered and non-clustered
-- set operators: unions and intersections and exceptions
--commmon table expressions
--custom directives

CREATE TABLE graduates (
  grad_id INT PRIMARY KEY,
  name VARCHAR(50),
  gender VARCHAR(10),
  course VARCHAR(50),
  year_graduated INT,
  grade FLOAT
);

CREATE TABLE departments (
  dept_id INT PRIMARY KEY,
  dept_name VARCHAR(50),
  faculty VARCHAR(50)
);
CREATE TABLE graduate_employment (
  emp_id INT PRIMARY KEY,
  grad_id INT,
  company VARCHAR(50),
  salary INT,
  FOREIGN KEY (grad_id) REFERENCES graduates(grad_id)
);

INSERT INTO graduates VALUES
(1,'Alice', 'F', 'Computer Science', 2022, 88.5),
(2,'Brian', 'M', 'Information Technology', 2022, 75.0),
(3,'Carol', 'F', 'Mathematics', 2021, 81.0),
(4,'Daniel', 'M', 'Computer Science', 2023, 92.0),
(5,'Eva', 'F', 'Economics', 2021, 70.0),
(6,'Felix', 'M', 'Statistics', 2023, 79.5),
(7,'Grace', 'F', 'Computer Science', 2022, 84.0),
(8,'Henry', 'M', 'Business Admin', 2020, 65.0),
(9,'Ivy', 'F', 'Computer Science', 2023, 90.0),
(10,'Jacob', 'M', 'Information Technology', 2021, 74.0),
(11,'Kelly', 'F', 'Economics', 2023, 69.0),
(12,'Liam', 'M', 'Mathematics', 2020, 82.0),
(13,'Maria', 'F', 'Computer Science', 2021, 91.0),
(14,'Noah', 'M', 'Information Technology', 2022, 87.0),
(15,'Olivia', 'F', 'Economics', 2023, 73.0),
(16,'Peter', 'M', 'Statistics', 2021, 78.0),
(17,'Queen', 'F', 'Mathematics', 2023, 88.0),
(18,'Ryan', 'M', 'Computer Science', 2021, 85.0),
(19,'Sophie', 'F', 'Business Admin', 2020, 67.0),
(20,'Tom', 'M', 'Computer Science', 2022, 82.0),
(21,'Una', 'F', 'Information Technology', 2023, 80.0),
(22,'Victor', 'M', 'Economics', 2020, 68.0),
(23,'Wendy', 'F', 'Mathematics', 2021, 89.0),
(24,'Xavier', 'M', 'Statistics', 2022, 84.5),
(25,'Yvonne', 'F', 'Computer Science', 2020, 77.0),
(26,'Zane', 'M', 'Business Admin', 2023, 71.0),
(27,'Chloe', 'F', 'Computer Science', 2023, 93.0),
(28,'David', 'M', 'Information Technology', 2021, 69.0),
(29,'Ella', 'F', 'Economics', 2022, 75.0),
(30,'Frank', 'M', 'Mathematics', 2023, 90.0);

INSERT INTO departments VALUES
(1,'Computer Science','Computing'),
(2,'Information Technology','Computing'),
(3,'Mathematics','Science'),
(4,'Statistics','Science'),
(5,'Economics','Business'),
(6,'Business Admin','Business');

INSERT INTO graduate_employment VALUES
(1,1,'Google',120000),
(2,4,'Safaricom',95000),
(3,7,'Equity Bank',88000),
(4,9,'Microsoft',150000),
(5,13,'KPMG',110000),
(6,18,'PwC',97000),
(7,21,'IBM',89000),
(8,23,'Deloitte',125000),
(9,27,'Amazon',160000),
(10,30,'Huawei',130000);

--expressions and constraints
--1. Retrieve all graduates with a grade above 85.
SELECT * FROM graduates WHERE grade > 85; 
--2. Find the average grade of graduates in the Computer Science course.
SELECT AVG(grade) AS avg_grade_cs FROM graduates WHERE course = 'Computer Science';

--3. List all female graduates who graduated in 2022.
SELECT * FROM graduates WHERE gender =  'F' AND year_graduated = 2022;
--4. Count the number of graduates in each course.
SELECT course, COUNT(*) AS num_graduates FROM graduates GROUP BY course;    
--5. Retrieve graduates with names starting with 'A'.
SELECT * FROM graduates WHERE name LIKE 'A%';
 
--indexing: clustered and non-clustered
--1. Create a clustered index on the year_graduated column in the graduates table.
CREATE INDEX idx_year_graduated ON graduates(year_graduated);
--2. Create a non-clustered index on the course column in the graduates table.
CREATE INDEX idx_course ON graduates(course);
--3. Create a clustered index on the dept_name column in the departments table.
CREATE INDEX idx_dept_name ON departments(dept_name);

--combbine with expressions and constraints
--4. Retrieve all graduates who graduated in 2022 and have a grade above 80, using the clustered index.
SELECT * FROM graduates WHERE year_graduated = 2022 AND grade > 80;
--5. Find the average grade of graduates in the Computer Science course, using the non-clustered index.
SELECT AVG(grade) AS avg_grade_cs FROM graduates WHERE course = 'Computer Science';
--6. List all female graduates who graduated in 2022, using the clustered index.
SELECT * FROM graduates WHERE gender = 'F' AND year_graduated = 2022;
--7. Count the number of graduates in each course, using the non-clustered index
SELECT course, COUNT(*) AS num_graduates FROM graduates GROUP BY course;


-- set operators: unions and intersections and exceptions
--1. Retrieve all graduates who graduated in 2022 or have a grade above 85.
SELECT * FROM graduates WHERE year_graduated = 2022 OR grade > 85;
--2. Find the average grade of graduates in the Computer Science course or in the Economics course.
SELECT AVG(grade) AS avg_grade FROM graduates WHERE course = 'Computer Science' OR course = 'Economics';
--3. List all female graduates who graduated in 2022 or have a grade above 80.
SELECT * FROM graduates WHERE gender = 'F' AND (year_graduated = 2022 OR grade > 80);
--4. Count the number of graduates in each course, using the non-clustered index.
SELECT course, COUNT(*) AS num_graduates FROM graduates GROUP BY course;

--unions
--5. Retrieve all graduates who graduated in 2022 and all graduates with a grade above 85.
SELECT * FROM graduates WHERE year_graduated = 2022 UNION SELECT * FROM graduates WHERE grade > 85; 
--6. Find the average grade of graduates in the Computer Science course and all graduates in the Economics course.
SELECT AVG(grade) AS avg_grade FROM graduates WHERE course = 'Computer Science' UNION SELECT AVG(grade) AS avg_grade FROM graduates WHERE course = 'Econom
ics';
--7. List all female  graduates who graduated in 2022 and all graduates with a grade above 80.
SELECT * FROM graduates WHERE gender = 'F' AND year_graduated = 2022 UNION SELECT * FROM graduates WHERE grade > 80;

--intersections
--8. Retrieve all graduates who graduated in 2022 and have a grade above 85.
SELECT * FROM graduates WHERE year_graduated = 2022 INTERSECT SELECT * FROM graduates WHERE grade > 85;
--9. Find the average grade of graduates in the Computer Science course and in the Economics course.
SELECT AVG(grade) AS avg_grade FROM graduates WHERE course = 'Computer Science' INTERSECT SELECT AVG(grade) AS avg_grade FROM graduates WHERE course = 'Economics';
--10. List all female graduates who graduated in 2022 and have a grade above 80.
SELECT * FROM graduates WHERE gender = 'F' AND year_graduated = 2022 INTERSECT SELECT * FROM graduates WHERE grade > 80;

--exceptions
--11. Retrieve all graduates who graduated in 2022 but do not have a grade above 85.
SELECT * FROM graduates WHERE year_graduated = 2022 EXCEPT SELECT * FROM graduates WHERE grade > 85;
--12. Find the average grade of graduates in the Computer Science course but not in the Economics course.
SELECT AVG(grade) AS avg_grade FROM graduates WHERE course = 'Computer Science' EXCEPT SELECT AVG(grade) AS avg_grade FROM graduates WHERE course = 'Economics';
--13. List all female graduates who graduated in 2022 but do not have a grade above 80.
SELECT * FROM graduates WHERE gender = 'F' AND year_graduated = 2022 EXCEPT SELECT * FROM graduates WHERE grade > 80;
--14. Count the number of graduates in each course, using the non-clustered index.
SELECT course, COUNT(*) AS num_graduates FROM graduates GROUP BY course;


--common table expressions
--1. Retrieve all graduates with a grade above 85.
WITH graduates_above_85 AS (SELECT * FROM graduates WHERE grade > 85)
SELECT * FROM graduates_above_85;
--2. Find the average grade of graduates in the Computer Science course.
WITH cs_graduates AS (SELECT * FROM graduates WHERE course = 'Computer Science')
SELECT AVG(grade) AS avg_grade_cs FROM cs_graduates;
--3. List all female graduates who graduated in 2022.
WITH female_graduates AS (SELECT * FROM graduates WHERE gender = 'F' AND year_graduated = 2022)
SELECT * FROM female_graduates;
--4. Count the number of graduates in each course.
WITH course_counts AS (SELECT course, COUNT(*) AS num_graduates FROM graduates GROUP BY course)
SELECT * FROM course_counts;

--custom directives
--1. Retrieve all graduates with a grade above 85.
/*+ INDEX(graduates idx_course) */ 
SELECT * FROM graduates WHERE grade > 85; 
--2. Find the average grade of graduates in the Computer Science course.
/*+ INDEX(graduates idx_course) */
SELECT  AVG(grade) AS avg_grade_cs FROM graduates WHERE course = 'Computer Science';
--3. List all female graduates who graduated in 2022.
/*+ INDEX(graduates idx_year_graduated) */
SELECT * FROM graduates WHERE gender = 'F' AND year_graduated = 2022;
--4. Count the number of graduates in each course.
/*+ INDEX(graduates idx_course) */
SELECT course, COUNT(*) AS num_graduates FROM graduates GROUP BY course;
--5. Retrieve all graduates who graduated in 2022 and have a grade above 80, using the clustered index.
/*+ INDEX(graduates idx_year_graduated) */
SELECT * FROM graduates WHERE year_graduated = 2022 AND grade > 80;