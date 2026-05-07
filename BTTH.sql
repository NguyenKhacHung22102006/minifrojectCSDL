CREATE DATABASE IF NOT EXISTS QuanLyKhoaHoc;
USE QuanLyKhoaHoc;
-- Tạo bảng TEACHER (Giáo viên)
CREATE TABLE TEACHER (
    teacher_id INT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL
);
-- Tạo bảng STUDENT (Sinh viên)
CREATE TABLE STUDENT (
    student_id INT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL
);
-- Tạo bảng COURSE (Khóa học)
CREATE TABLE COURSE (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(150) NOT NULL,
    description TEXT,
    total_sessions INT NOT NULL,
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES TEACHER(teacher_id)
);
CREATE TABLE ENROLLMENT (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enroll_date DATE NOT NULL,
    FOREIGN KEY (student_id) REFERENCES STUDENT(student_id),
    FOREIGN KEY (course_id) REFERENCES COURSE(course_id)
);
-- Tạo bảng SCORE (Điểm số)
CREATE TABLE SCORE (
    score_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    midterm_score FLOAT,
    final_score FLOAT,
    FOREIGN KEY (student_id) REFERENCES STUDENT(student_id),
    FOREIGN KEY (course_id) REFERENCES COURSE(course_id)
);
CREATE TABLE TeacherCourse (
    Teacher_id INT not null,
    course_id INT NOT NULL ,
    FOREIGN KEY (Teacher_id) REFERENCES Teacher(Teacher_id),
    FOREIGN KEY (course_id) REFERENCES Course(course_id)
);
