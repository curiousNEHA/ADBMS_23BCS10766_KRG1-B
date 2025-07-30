--QUESTION - 1 (MEDIUM LEVEL)
CREATE TABLE E (
    EmpID INT,
    Ename VARCHAR(20),
    Department VARCHAR(20),
    ManagerID INT
);

INSERT INTO E (EmpID, Ename, Department, ManagerID) VALUES
(1, 'Alice', 'HR', NULL),
(2, 'Bob', 'Finance', 1),
(3, 'Charlie', 'IT', 2),
(4, 'David', 'Finance', 5),
(5, 'Eve', 'HR', 3),
(6, 'Frank', 'IT', NULL);

SELECT E1.Ename AS EmployeeName,
E1.Department AS EmployeeDept,
E2.Ename AS ManagerName,
E2.Department AS ManagerDepartment
FROM E E1
JOIN E E2
ON
E2.EmpID = E1.ManagerID;


--QUESTION - 2 (HARD LEVEL)
CREATE TABLE Y_TBL (
    ID INT,
    YEAR INT,
    NPV INT
);

CREATE TABLE Q_TBL (
    ID INT,
    YEAR INT
);

INSERT INTO Y_TBL (ID, YEAR, NPV) VALUES
(1, 2018, 100),
(7, 2020, 30),
(13, 2019, 40),
(1, 2019, 113),
(2, 2008, 121),
(3, 2009, 12),
(11, 2020, 99),
(7, 2019, 0);

INSERT INTO Q_TBL (ID, YEAR) VALUES
(1, 2019),
(2, 2008),
(3, 2009),
(7, 2018),
(7, 2019),
(7, 2020),
(13, 2019);

SELECT E2.ID,
E2.YEAR,
E1.NPV
FROM
Y_TBL AS E1
INNER JOIN
Q_TBL AS E2
ON
E1.ID = E2.ID AND E1.YEAR = E2.YEAR;

