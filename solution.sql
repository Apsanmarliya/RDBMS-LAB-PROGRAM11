CREATE TABLE Department (
    DepartmentID NUMBER(5),
    DepartmentName VARCHAR2(30)
);
INSERT INTO Department VALUES (101, 'Computer Science');
INSERT INTO Department VALUES (102, 'Mathematics');
INSERT INTO Department VALUES (103, 'Physics');
-- Create Student table
CREATE TABLE Student (
    StudentID NUMBER(5),
    StudentName VARCHAR2(30),
    DepartmentID NUMBER(5)
);
INSERT INTO Student VALUES (1001, 'Arun', 101);
INSERT INTO Student VALUES (1002, 'Divya', 102);
INSERT INTO Student VALUES (1003, 'Karthik', 101);
CREATE TABLE Course (
    CourseID NUMBER(5),
    CourseName VARCHAR2(30)
);
INSERT INTO Course VALUES (201, 'Database Systems');
INSERT INTO Course VALUES (202, 'Data Structures');
INSERT INTO Course VALUES (203, 'Mathematics');
CREATE TABLE Enrollment (
    EnrollmentID NUMBER(5),
    StudentID NUMBER(5),
    CourseID NUMBER(5)
);
INSERT INTO Enrollment VALUES (1, 1001, 201);
INSERT INTO Enrollment VALUES (2, 1001, 202);
INSERT INTO Enrollment VALUES (3, 1002, 203);
INSERT INTO Enrollment VALUES (4, 1003, 201);
CREATE VIEW StudentDetails AS
SELECT
    Student.StudentName,
    Course.CourseName,
    Department.DepartmentName
FROM Student
JOIN Enrollment
    ON Student.StudentID = Enrollment.StudentID
JOIN Course
    ON Enrollment.CourseID = Course.CourseID
JOIN Department
    ON Student.DepartmentID = Department.DepartmentID;
SELECT * FROM StudentDetails;

