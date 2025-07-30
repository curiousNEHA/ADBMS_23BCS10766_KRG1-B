--QUESTION : 1 (EASY PROBLEM)

CREATE TABLE Authors (
    author_id INT PRIMARY KEY,
    name VARCHAR(100),
    country VARCHAR(100)
);

CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

INSERT INTO Authors (author_id, name, country) VALUES
(1, 'J.K. Rowling', 'United Kingdom'),
(2, 'George R.R. Martin', 'United States'),
(3, 'Chetan Bhagat', 'India');

INSERT INTO Books (book_id, title, author_id) VALUES
(101, 'Harry Potter', 1),
(102, 'A Game of Thrones', 2),
(103, 'Five Point Someone', 3);

SELECT Books.title AS Book_Title,
Authors.name AS Author_Name,
Authors.country AS Author_Country
FROM Books
INNER JOIN 
Authors ON Books.author_id = Authors.author_id;


--QUESTION : 2 (MEDIUM PROBLEM)

CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(100)
);

CREATE TABLE Course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);

INSERT INTO Department (dept_id, dept_name) VALUES
(1, 'Computer Science'),
(2, 'Electronics'),
(3, 'Mechanical'),
(4, 'Mathematics'),
(5, 'Civil');

INSERT INTO Course (course_id, course_name, dept_id) VALUES
(101, 'Data Structures', 1),
(102, 'Algorithms', 1),
(103, 'Operating Systems', 1),
(104, 'Digital Electronics', 2),
(105, 'Microprocessors', 2),
(106, 'Thermodynamics', 3),
(107, 'Fluid Mechanics', 3),
(108, 'Calculus', 4),
(109, 'Linear Algebra', 4),
(110, 'Structural Engineering', 5);

SELECT dept_name
FROM Department
WHERE dept_id IN (
 SELECT dept_id
 FROM Course
 GROUP BY dept_id
 HAVING COUNT(*) > 2
);

create login login_users with password = 'Neha@123';

create user neha_103 for login login_users;

grant select on courses to neha_103;
