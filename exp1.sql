CREATE TABLE Tbl_MDepartment (
    Dept_ID INT PRIMARY KEY,
    Dept_Name VARCHAR(100) NOT NULL UNIQUE,
    Dept_Head varchar(30)
);

CREATE TABLE Tbl_Course (
    Course_ID INT PRIMARY KEY,
    Course_Name VARCHAR(100) NOT NULL,
    Credits INT NOT NULL,
    Dept_ID INT NOT NULL,
    FOREIGN KEY (Dept_ID) REFERENCES Tbl_MDepartment(Dept_ID)
);

-- Adding values

INSERT INTO Tbl_MDepartment (Dept_ID, Dept_Name) VALUES
(1, 'Computer Science'),
(2, 'Mechanical Engineering'),
(3, 'Electrical Engineering'),
(4, 'Civil Engineering'),
(5, 'Mathematics');


INSERT INTO Tbl_Course (Course_ID, Course_Name, Credits, Dept_ID) VALUES
(101, 'Data Structures', 4, 1),
(102, 'Algorithms', 4, 1),
(103, 'Operating Systems', 4, 1),
(104, 'Thermodynamics', 3, 2),
(105, 'Fluid Mechanics', 3, 2),
(106, 'Circuits', 3, 3),
(107, 'Power Systems', 4, 3),
(108, 'Concrete Structures', 3, 4),
(109, 'Linear Algebra', 3, 5),
(110, 'Calculus', 4, 5),
(111, 'Probability & Statistics', 3, 5);


-- Sub Query 

SELECT d.Dept_Name,
    (SELECT COUNT(*)
    FROM Tbl_Course as c
    WHERE c.Dept_ID = d.Dept_ID) as 'No. Courses'
FROM Tbl_MDepartment as d;

-- Filter

SELECT d.Dept_Name
FROM Tbl_MDepartment as d
WHERE (SELECT COUNT(*)
    FROM Tbl_Course as c
    WHERE c.Dept_ID = d.Dept_ID) > 2;


CREATE LOGIN TEST_LOGIN_DIVYANSH
WITH PASSWORD = 'TESTLOGIN@70239'; 
 
CREATE USER TEST_LOGIN_DIVYANSH
FOR LOGIN TEST_LOGIN_DIVYANSH
 
 
EXECUTE AS USER = 'TEST_USER_DIVYANSH' 
 
GRANT SELECT ON TBL_COURSE TO TEST_LOGIN_DIVYANSH 
 
