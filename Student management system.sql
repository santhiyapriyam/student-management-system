-- DDL – Create Database --
CREATE DATABASE studentmanagement;
use studentmanagement;
-- DDL – Create Tables Student Table --
CREATE TABLE student(
student_id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(50),
gender VARCHAR(10),
age INT,
department VARCHAR(30),
phone VARCHAR(15)
);
-- Course Table --
CREATE TABLE course(
course_id INT PRIMARY KEY AUTO_INCREMENT,
course_name VARCHAR(50),
department VARCHAR(30)
);
-- Enrollment Table --
CREATE TABLE enrollment(
enroll_id INT PRIMARY KEY AUTO_INCREMENT,
student_id INT,
course_id INT,
semester VARCHAR(20),
FOREIGN KEY(student_id) REFERENCES student(student_id),
FOREIGN KEY(course_id) REFERENCES course(course_id)
);
-- Marks Table --
CREATE TABLE marks(
mark_id INT PRIMARY KEY AUTO_INCREMENT,
student_id INT,
course_id INT,
marks INT,
FOREIGN KEY(student_id) REFERENCES student(student_id),
FOREIGN KEY(course_id) REFERENCES course(course_id)
);
-- ALTER TABLE (DDL) --
ALTER TABLE student
ADD email VARCHAR(50);
-- DML – Insert Data --
INSERT INTO student(name, gender, age, department, phone)
VALUES
('Arun','Male',20,'CSE','9876543210'),
('Divya','Female',19,'IT','9876543211'),
('Rahul','Male',21,'ECE','9876543212'),
('Priya','Female',20,'CSE','9876543213'),
('Karthik','Male',22,'MECH','9876543214'),
('Anitha','Female',19,'IT','9876543215'),
('Suresh','Male',21,'CIVIL','9876543216'),
('Meena','Female',20,'ECE','9876543217'),
('Ravi','Male',22,'CSE','9876543218'),
('Lakshmi','Female',20,'IT','9876543219'),
('Manoj','Male',21,'MECH','9876543220'),
('Kavya','Female',19,'CSE','9876543221'),
('Vijay','Male',20,'IT','9876543222'),
('Deepa','Female',21,'ECE','9876543223'),
('Prakash','Male',22,'CIVIL','9876543224'),
('Sneha','Female',20,'CSE','9876543225'),
('Ajay','Male',21,'IT','9876543226'),
('Nisha','Female',19,'ECE','9876543227'),
('Arvind','Male',22,'MECH','9876543228'),
('Pooja','Female',20,'CSE','9876543229'),
('Kiran','Male',21,'IT','9876543230'),
('Swathi','Female',19,'CIVIL','9876543231'),
('Raj','Male',22,'ECE','9876543232'),
('Harini','Female',20,'CSE','9876543233'),
('Vinay','Male',21,'MECH','9876543234'),
('Riya','Female',20,'IT','9876543235'),
('Sanjay','Male',22,'ECE','9876543236'),
('Divakar','Male',21,'CIVIL','9876543237'),
('Keerthi','Female',19,'CSE','9876543238'),
('Vani','Female',20,'IT','9876543239'),
('Ramesh','Male',21,'MECH','9876543240'),
('Geetha','Female',22,'ECE','9876543241'),
('Kumar','Male',20,'CSE','9876543242'),
('Bhavya','Female',19,'IT','9876543243'),
('Arjun','Male',21,'CIVIL','9876543244'),
('Preethi','Female',20,'ECE','9876543245'),
('Gokul','Male',22,'MECH','9876543246'),
('Shalini','Female',21,'CSE','9876543247'),
('Tarun','Male',20,'IT','9876543248'),
('Lavanya','Female',19,'ECE','9876543249'),
('Dinesh','Male',22,'CIVIL','9876543250'),
('Neha','Female',21,'CSE','9876543251'),
('Sathish','Male',20,'IT','9876543252'),
('Asha','Female',19,'MECH','9876543253'),
('Ganesh','Male',22,'ECE','9876543254'),
('Hema','Female',21,'CIVIL','9876543255'),
('Naveen','Male',20,'CSE','9876543256'),
('Reshma','Female',19,'IT','9876543257'),
('Karthika','Female',22,'ECE','9876543258'),
('Surya','Male',21,'MECH','9876543259'),
('Varun','Male',20,'CSE','9876543260'),
('Anu','Female',19,'IT','9876543261'),
('Rohit','Male',22,'ECE','9876543262'),
('Shruthi','Female',21,'CSE','9876543263'),
('Siddharth','Male',20,'MECH','9876543264'),
('Madhavi','Female',19,'IT','9876543265'),
('Chandan','Male',21,'ECE','9876543266'),
('Ishita','Female',22,'CIVIL','9876543267'),
('Raghav','Male',20,'CSE','9876543268'),
('Pavithra','Female',19,'IT','9876543269'),
('Krishna','Male',21,'MECH','9876543270'),
('Bhavana','Female',22,'ECE','9876543271'),
('Aditya','Male',20,'CSE','9876543272'),
('Sangeetha','Female',21,'IT','9876543273'),
('Nikhil','Male',22,'CIVIL','9876543274'),
('Pradeep','Male',20,'ECE','9876543275');
-- Course Table Data --
INSERT INTO course(course_name,department) VALUES
('Database Systems','CSE'),
('Operating Systems','CSE'),
('Web Development','IT'),
('Networking','IT'),
('Digital Electronics','ECE'),
('Communication Systems','ECE'),
('Thermodynamics','MECH'),
('Machine Design','MECH'),
('Structural Engineering','CIVIL'),
('Surveying','CIVIL');
-- Enrollment Table Data --
INSERT INTO enrollment(student_id,course_id,semester) VALUES
(1,1,'Semester 1'),
(2,3,'Semester 1'),
(3,5,'Semester 2'),
(4,1,'Semester 1'),
(5,7,'Semester 2'),
(6,4,'Semester 1'),
(7,9,'Semester 3'),
(8,5,'Semester 2'),
(9,2,'Semester 1'),
(10,4,'Semester 1'),
(11,7,'Semester 2'),
(12,1,'Semester 1'),
(13,3,'Semester 1'),
(14,5,'Semester 2'),
(15,9,'Semester 3'),
(16,1,'Semester 1'),
(17,3,'Semester 1'),
(18,5,'Semester 2'),
(19,7,'Semester 2'),
(20,1,'Semester 1'),
(21,3,'Semester 1'),
(22,9,'Semester 3'),
(23,5,'Semester 2'),
(24,1,'Semester 1'),
(25,7,'Semester 2'),
(26,3,'Semester 1'),
(27,5,'Semester 2'),
(28,9,'Semester 3'),
(29,1,'Semester 1'),
(30,3,'Semester 1'),
(31,7,'Semester 2'),
(32,5,'Semester 2'),
(33,1,'Semester 1'),
(34,3,'Semester 1'),
(35,9,'Semester 3'),
(36,5,'Semester 2'),
(37,7,'Semester 2'),
(38,1,'Semester 1'),
(39,3,'Semester 1'),
(40,5,'Semester 2'),
(41,9,'Semester 3'),
(42,1,'Semester 1'),
(43,3,'Semester 1'),
(44,7,'Semester 2'),
(45,5,'Semester 2'),
(46,9,'Semester 3'),
(47,1,'Semester 1'),
(48,3,'Semester 1'),
(49,5,'Semester 2'),
(50,7,'Semester 2'),
(51,1,'Semester 1'),
(52,3,'Semester 1'),
(53,9,'Semester 3'),
(54,5,'Semester 2'),
(55,5,'Semester 2'),
(56,3,'Semester 1'),
(57,1,'Semester 1'),
(58,5,'Semester 2'),
(59,7,'Semester 2'),
(60,1,'Semester 1'),
(61,3,'Semester 1'),
(62,5,'Semester 2'),
(63,1,'Semester 1'),
(64,7,'Semester 2'),
(65,3,'Semester 1'),
(66,5,'Semester 2');
-- Marks data --
INSERT INTO marks(student_id,course_id,marks) VALUES
(1,1,85),
(2,3,78),
(3,5,90),
(4,1,88),
(5,7,67),
(6,3,72),
(7,9,81),
(8,5,76),
(9,1,92),
(10,3,69),
(11,7,74),
(12,1,83),
(13,3,77),
(14,5,86),
(15,9,70),
(16,1,91),
(17,3,68),
(18,5,79),
(19,7,73),
(20,1,84),
(21,3,75),
(22,9,66),
(23,5,89),
(24,1,82),
(25,7,71),
(26,3,88),
(27,5,80),
(28,9,72),
(29,1,87),
(30,3,69),
(31,7,76),
(32,5,90),
(33,1,78),
(34,3,74),
(35,9,83),
(36,5,77),
(37,7,81),
(38,1,85),
(39,3,70),
(40,5,79),
(41,9,68),
(42,1,88),
(43,3,75),
(44,7,73),
(45,5,86),
(46,9,71),
(47,1,90),
(48,3,82),
(49,5,84),
(50,7,76),
(51,1,87),
(52,3,78),
(53,9,69),
(54,5,83),
(55,5,80),
(56,3,82),
(57,1,76),
(58,5,88),
(59,7,74),
(60,1,90),
(61,3,79),
(62,5,84),
(63,1,81),
(64,7,72),
(65,3,77),
(66,5,85);
-- DQL – SELECT Operations --
SELECT * FROM student;
-- WHERE Condition --
SELECT name,department
FROM student
WHERE department='CSE';
-- DISTINCT --
SELECT DISTINCT department
FROM student;
-- ORDER BY --
SELECT student_id,marks
FROM marks
ORDER BY marks DESC;
-- Aggregate Functions --
SELECT MAX(marks) AS highest_marks FROM marks;
SELECT MIN(marks) AS lowest_marks FROM marks;
SELECT AVG(marks) AS average_marks FROM marks;
SELECT COUNT(*) AS total_students FROM student;
-- GROUP BY --
SELECT s.department, AVG(m.marks) AS avg_marks
FROM student s
JOIN marks m
ON s.student_id=m.student_id
GROUP BY s.department;
-- HAVING --
SELECT s.department, AVG(m.marks) AS avg_marks
FROM student s
JOIN marks m
ON s.student_id=m.student_id
GROUP BY s.department
HAVING AVG(m.marks) > 80;
-- JOIN --
-- Student + Marks --
SELECT s.name, m.marks
FROM student s
JOIN marks m
ON s.student_id=m.student_id;
-- Student + Course + Marks --
SELECT s.name,c.course_name,m.marks
FROM student s
JOIN marks m ON s.student_id=m.student_id
JOIN course c ON m.course_id=c.course_id;
-- Name + semester + Courses --
SELECT s.name,e.semester,c.course_name
FROM student s
JOIN enrollment e ON s.student_id=e.student_id
JOIN course c ON e.course_id=c.course_id;
-- Subquery --
SELECT name
FROM student
WHERE student_id=
(
SELECT student_id
FROM marks
WHERE marks=(SELECT MAX(marks) FROM marks)
);
-- Window function --
SELECT student_id,marks,
RANK() OVER(ORDER BY marks DESC) AS rank_position
FROM marks;
-- View --
CREATE VIEW student_report AS
SELECT s.name,s.department,c.course_name,m.marks
FROM student s
JOIN marks m ON s.student_id=m.student_id
JOIN course c ON m.course_id=c.course_id;
SELECT * FROM student_report;
-- INDEX --
CREATE INDEX idx_marks
ON marks(marks);
-- TRANSACTION --
START TRANSACTION;
UPDATE marks
SET marks=95
WHERE student_id=1;
ROLLBACK;
-- DML – UPDATE--
UPDATE student
SET phone='9999999999'
WHERE student_id=5;
UPDATE student
SET email = CONCAT(LOWER(name),'@gmail.com');
-- DML – DELETE --
DELETE FROM marks
WHERE student_id = 10;

DELETE FROM enrollment
WHERE student_id = 10;

DELETE FROM student
WHERE student_id = 10;
SELECT * FROM student WHERE student_id = 10; -- need to delete for performing del operation --
-- Truncate --
TRUNCATE TABLE marks;
-- to show mark table aftr turncate --
SELECT s.name, m.marks
FROM student s
JOIN marks m
ON s.student_id = m.student_id;
-- Drop --
CREATE TABLE temp_table(id INT);
DROP TABLE temp_table;
DROP TABLE IF EXISTS temp_table;
-- Top 5 students --
SELECT s.name,m.marks
FROM student s
JOIN marks m ON s.student_id=m.student_id
ORDER BY m.marks DESC
LIMIT 5;
-- students marks > 80 --
SELECT s.name,m.marks
FROM student s
JOIN marks m ON s.student_id=m.student_id
WHERE m.marks > 80;
-- Department Wise Student Count--
SELECT department, COUNT(*) AS total_students
FROM student
GROUP BY department;
-- index --
CREATE INDEX idx_student_department
ON student(department);
-- ADMIN & USER (DCL) --
-- Create Users --
CREATE USER 'admin_user'@'localhost' IDENTIFIED BY 'admin123';
CREATE USER 'normal_user'@'localhost' IDENTIFIED BY 'user123';
-- Admin Privileges --
GRANT ALL PRIVILEGES
ON studentmanagement.*
TO 'admin_user'@'localhost';
-- Normal User Privileges --
GRANT SELECT
ON studentmanagement.*
TO 'normal_user'@'localhost';
-- Apply Changes --
FLUSH PRIVILEGES;