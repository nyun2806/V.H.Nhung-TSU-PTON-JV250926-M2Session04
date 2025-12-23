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