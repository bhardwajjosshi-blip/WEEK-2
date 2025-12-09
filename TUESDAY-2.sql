CREATE DATABASE student1_db;

USE student1_db;

CREATE TABLE student1 ( 
enrollment_no INT PRIMARY KEY, 
name VARCHAR(50), 
contact_no VARCHAR(15), 
course VARCHAR(50) 
);

INSERT INTO student1 (enrollment_no, name, contact_no, course) VALUES
(101, 'Sahil Gupta', '9900112233', 'BSc IT'),
(102, 'Neha Rajput', '9822004455', 'B.Tech'),
(103, 'Vikram Singh', '9753108642', 'BBA'),
(104, 'Pooja Nair', '9870012345', 'B.Arch'),
(105, 'Harshil Mehta', '9012345678', 'BSc Maths');

SELECT * FROM student1;
DROP TABLE student1;

CREATE TABLE student1 ( 
enrollment_no INT PRIMARY KEY, 
name VARCHAR(50), 
course VARCHAR(50),
age INT  
);

INSERT INTO student1 (enrollment_no, name, course, age ) VALUES
(101, 'Sahil Gupta', 'BSc IT',22),
(102, 'Neha Rajput',  'B.Tech',21),
(103, 'Vikram Singh',  'BBA',20),
(104, 'Pooja Nair',  'B.Arch',19),
(105, 'Harshil Mehta', 'BSc Maths', 20);

INSERT INTO student1 (enrollment_no, name, course, age ) VALUES
(106, 'Shivam Dubey', 'BCA', 22),
(107, 'Anushka Pandey', 'BBA', 21),
(108, 'Rohan Shah', 'BSc Chemistry', 20),
(109, 'Tanya Verma', 'B.Tech', 18),
(110, 'Ishaan Kulkarni', 'Data Science', 23);

SELECT * FROM student1;

SELECT * FROM student1
WHERE age > 20;

SELECT * FROM student1
WHERE course = 'Data Science';

SELECT * FROM student1
WHERE name LIKE 'A%';

SELECT * FROM student1
WHERE age BETWEEN 18 AND 25;

SELECT * FROM student1
WHERE name = 'Tanya Verma';