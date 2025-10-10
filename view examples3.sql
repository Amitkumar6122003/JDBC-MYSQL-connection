CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    course VARCHAR(50)
);

CREATE TABLE Marks (
    mark_id INT PRIMARY KEY,
    student_id INT,
    subject VARCHAR(50),
    marks INT,
    FOREIGN KEY (student_id) REFERENCES Student(student_id)
);

INSERT INTO Student VALUES 
(1, 'Amit', 'BCA'),
(2, 'Ravi', 'BBA'),
(3, 'Sneha', 'BCA');

INSERT INTO Marks VALUES 
(101, 1, 'Java', 85),
(102, 1, 'DBMS', 78),
(103, 2, 'Economics', 69),
(104, 3, 'Java', 92),
(105, 3, 'DBMS', 88);

CREATE VIEW StudentAverage AS
SELECT s.student_id, s.name, s.course, AVG(m.marks) AS AverageMarks
FROM Student s
JOIN Marks m ON s.student_id = m.student_id
GROUP BY s.student_id, s.name, s.course;

SELECT * FROM StudentAverage;
