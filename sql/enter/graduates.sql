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

--inner join

SELECT g.name, e.company, e.salary
FROM graduates g
INNER JOIN graduate_employment e
ON g.grad_id = e.grad_id;


