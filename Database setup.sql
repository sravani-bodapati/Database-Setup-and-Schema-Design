Step-by-Step SQL Code:

sql
-- 1. Create the database
CREATE DATABASE IF NOT EXISTS student_management;
USE student_management;

-- 2. Departments table
CREATE TABLE departments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    dept_name VARCHAR(100) NOT NULL
);

-- 3. Faculty table
CREATE TABLE faculty (
    id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100),
    email VARCHAR(100),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(id)
);

-- 4. Students table
CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    gender ENUM('Male', 'Female', 'Other'),
    dob DATE,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(id)
);

-- 5. Courses table
CREATE TABLE courses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100),
    course_code VARCHAR(20) UNIQUE,
    credit_hours INT,
    department_id INT,
    faculty_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(id),
    FOREIGN KEY (faculty_id) REFERENCES faculty(id)
);

-- 6. Enrollments table (students enrolled in courses)
CREATE TABLE enrollments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (course_id) REFERENCES courses(id)
);

-- 7. Marks table (grades or scores for enrolled students)
CREATE TABLE marks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    enrollment_id INT,
    marks_obtained DECIMAL(5,2),
    grade CHAR(2),
    FOREIGN KEY (enrollment_id) REFERENCES enrollments(id)
);

