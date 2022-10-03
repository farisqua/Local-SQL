--Udemy SQL Bootcamp Assessment 8--

CREATE TABLE teachers(
	teacher_id SERIAL PRIMARY KEY,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	homeroom_number VARCHAR(255) NOT NULL,
	department VARCHAR(255) NOT NULL,
	email VARCHAR(255) UNIQUE NOT NULL,
	phone VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE students(
	student_id SERIAL PRIMARY KEY,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	homeroom_number VARCHAR(255) NOT NULL,
	phone VARCHAR(255) UNIQUE NOT NULL,
	email VARCHAR(255) UNIQUE NOT NULL,
	graduation_year VARCHAR(255) NOT NULL
);


INSERT INTO students (first_name, last_name, phone, graduation_year, homeroom_number)
VALUES (
	'Mark',
	'Watney',
	'777-555-1234',
	'2035',
	'5'
);

INSERT INTO teachers (first_name, last_name, homeroom_number, department, email, phone)
VALUES (
	'Jonas',
	'Salk',
	'5',
	'Biology',
	'jsalk@school.org',
	'777-555-4321'
);

SELECT * FROM students;
SELECT * FROM teachers