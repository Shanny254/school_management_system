-- Create the School Database
CREATE DATABASE SchoolDB;

-- Switch to the newly created database
USE SchoolDB;

-- Create the Students Table
CREATE TABLE Students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,  
    full_name VARCHAR(100) NOT NULL,            
    gender ENUM('Male', 'Female') NOT NULL,     
    dob DATE,                                   
    email VARCHAR(100) UNIQUE NOT NULL          
);

-- Create the Courses Table
CREATE TABLE Courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,   
    course_name VARCHAR(100) NOT NULL,           
    course_code VARCHAR(20) UNIQUE NOT NULL     
);

-- Create the Enrollments Table (Many-to-Many relationship: Students <-> Courses)
CREATE TABLE Enrollments (
    enrollment_id INT AUTO_INCREMENT PRIMARY KEY, 
    student_id INT NOT NULL,                      
    course_id INT NOT NULL,                       
    enrollment_date DATE NOT NULL,                
    FOREIGN KEY (student_id) REFERENCES Students(student_id), 
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)    -
);

-- Create the Grades Table
CREATE TABLE Grades (
    grade_id INT AUTO_INCREMENT PRIMARY KEY,    
    student_id INT NOT NULL,                      
    course_id INT NOT NULL,                      
    grade VARCHAR(5) NOT NULL,                    
    FOREIGN KEY (student_id) REFERENCES Students(student_id), 
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)    
);

-- Create the Teachers Table
CREATE TABLE Teachers (
    teacher_id INT AUTO_INCREMENT PRIMARY KEY,    
    full_name VARCHAR(100) NOT NULL,            
    subject VARCHAR(100) NOT NULL,              
    email VARCHAR(100) UNIQUE NOT NULL            
);

-- Create the Classrooms Table
CREATE TABLE Classrooms (
    classroom_id INT AUTO_INCREMENT PRIMARY KEY,  
    room_number VARCHAR(10) NOT NULL,            
    capacity INT NOT NULL,                       
    teacher_id INT NOT NULL,                     
    FOREIGN KEY (teacher_id) REFERENCES Teachers(teacher_id) 
);



-- Insert sample data for Students
INSERT INTO Students (full_name, gender, dob, email)
VALUES
('James Mwangi', 'Male', '2002-08-14', 'james.mwangi@masomo.ac.ke'),
('Grace Wanjiku', 'Female', '2003-03-25', 'grace.wanjiku@masomo.ac.ke'),
('Michael Kimani', 'Male', '2002-11-05', 'michael.kimani@masomo.ac.ke'),
('Faith Njambi', 'Female', '2002-12-17', 'faith.njambi@masomo.ac.ke'),
('Samuel Odhiambo', 'Male', '2001-05-22', 'samuel.odhiambo@masomo.ac.ke'),
('Alice Kariuki', 'Female', '2003-01-30', 'alice.kariuki@masomo.ac.ke');

-- Insert sample data for Courses
INSERT INTO Courses (course_name, course_code)
VALUES
('Mathematics', 'MTH101'),
('English', 'ENG102'),
('Biology', 'BIO103'),
('History', 'HIS104'),
('Geography', 'GEO105'),
('Computer Studies', 'CST106');

-- Insert sample data for Enrollments
INSERT INTO Enrollments (student_id, course_id, enrollment_date)
VALUES
(1, 1, '2025-01-10'),
(1, 2, '2025-01-10'),
(2, 1, '2025-01-12'),
(2, 3, '2025-01-15'),
(3, 2, '2025-01-20'),
(4, 1, '2025-02-05'),
(4, 5, '2025-02-05'),
(5, 6, '2025-02-10'),
(6, 4, '2025-02-12'),
(6, 3, '2025-02-15');

-- Insert sample data for Grades
INSERT INTO Grades (student_id, course_id, grade)
VALUES
(1, 1, 'A'),
(1, 2, 'B'),
(2, 1, 'A'),
(2, 3, 'B'),
(3, 2, 'C'),
(4, 1, 'B'),
(4, 5, 'A'),
(5, 6, 'A'),
(6, 4, 'A'),
(6, 3, 'B');

-- Insert sample data for Teachers
INSERT INTO Teachers (full_name, subject, email)
VALUES
('James Mwangi', 'Mathematics', 'james.mwangi@masomo.ac.ke'),
('Grace Wanjiku', 'English', 'grace.wanjiku@masomo.ac.ke'),
('Michael Kimani', 'Biology', 'michael.kimani@masomo.ac.ke'),
('Faith Njambi', 'History', 'faith.njambi@masomo.ac.ke'),
('Samuel Odhiambo', 'Geography', 'samuel.odhiambo@masomo.ac.ke'),
('Alice Kariuki', 'Computer Studies', 'alice.kariuki@masomo.ac.ke');

-- Insert sample data for Classrooms
INSERT INTO Classrooms (room_number, capacity, teacher_id)
VALUES
('A102', 35, 1),  
('B201', 30, 2), 
('C303', 28, 3),  
('D404', 32, 4),  
('E505', 25, 5),  
('F606', 40, 6); 

