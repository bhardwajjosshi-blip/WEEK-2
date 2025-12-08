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