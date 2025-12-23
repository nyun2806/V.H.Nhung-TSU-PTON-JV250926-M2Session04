CREATE DATABASE students_management;
USE students_management;


CREATE TABLE students(
student_id varchar(10) primary key,
full_name varchar(255),
birth_date date,
gender varchar(10),
email varchar(255) null
);
INSERT INTO students (student_id, full_name, birth_date, gender, email)
VALUES 
('SV001', 'Vu Hong Nhung', '1996-06-11', 'Nu', 'nyun2806@gmail.com'),
('SV002', 'Nguyen Thi Ngoc Thuy', '1997-10-15', 'Nu', 'thuy123@gmail.com'),
('SV003', 'Cao Ly Nhu Nguyet', '2005-11-02', 'Nu', NULL),
('SV004', 'Nishiyama Yuka', '2003-04-11', 'Nu', 'yukanishi@gmail.com'),
('SV005', 'Takahashi Hiroki', '1994-08-12', 'Nam', 'hirotaka@gmail.com');
SELECT * FROM students;
SELECT student_id, full_name, email 
FROM students;

UPDATE students
SET email = 'caoly12@gmail.com'
WHERE student_id = 'SV003';
SELECT * FROM students WHERE student_id = 'SV003';

UPDATE students 
SET gender = 'Nam' 
WHERE student_id = 'SV005';
SELECT * FROM students WHERE student_id = 'SV005';

DELETE FROM students 
WHERE student_id = 'SV003';
SELECT * FROM students;

SELECT student_id, full_name, birth_date
FROM students
WHERE YEAR(birth_date) BETWEEN 2003 AND 2005;

SELECT * FROM students 
WHERE gender IN ('Nam', 'Nu');

SELECT * FROM students 
WHERE student_id IN ('SV001', 'SV004', 'SV005');

SELECT student_id, full_name, birth_date
FROM students
WHERE student_id IN ('SV001', 'SV004', 'SV005');






