SELECT * FROM student.students_info;

-- all students laguna
SELECT * FROM student.students_info WHERE city = 'Laguna';

-- all grade 80
SELECT * FROM student.students_info WHERE sem_grade = '80';

-- all female students
SELECT * FROM student.students_info WHERE gender = 'F';

-- youngest entry age
SELECT * FROM student.students_info WHERE entry_age = (SELECT MIN(entry_age) FROM student.students_info);

-- highest final exam grade
SELECT * FROM student.students_info WHERE final_exam = (SELECT MAX(final_exam) FROM student.students_info);

-- students not 4th year
SELECT * FROM student.students_info WHERE NOT status = '4TH YEAR';

-- arrange students by sem grade descending order
SELECT * FROM student.students_info ORDER BY sem_grade DESC;

-- male student and first year
SELECT * FROM student.students_info WHERE gender = 'M' AND status = '1ST YEAR';
