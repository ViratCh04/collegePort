CREATE DATABASE ass1;

USE ass1;

CREATE TABLE IF NOT EXISTS employee (
    EmpId INT PRIMARY KEY,
    EmpName VARCHAR(255) NOT NULL,
    Department VARCHAR(255) NOT NULL,
    ContactNo VARCHAR(255) NOT NULL,
    EmailId VARCHAR(255) NOT NULL,
    EmpHeadId INT NOT NULL
);

CREATE TABLE EmpDept (
    DeptId VARCHAR(255) PRIMARY KEY,
    DeptName VARCHAR(255) NOT NULL,
    DeptOff VARCHAR(255) NOT NULL,
    DeptHead INT NOT NULL,
    FOREIGN KEY (DeptHead) REFERENCES employee(EmpId)
);

CREATE TABLE EmpSalary (
    EmpId INT PRIMARY KEY,
    Salary INT NOT NULL,
    IsPermanent BOOLEAN NOT NULL,
    FOREIGN KEY (EmpId) REFERENCES employee(EmpId),
);


CREATE TABLE Project (
    ProjectId INT PRIMARY KEY,
    Duration INT NOT NULL
);

CREATE TABLE country (
    cid INT PRIMARY KEY,
    cname VARCHAR(255) NOT NULL
)

CREATE TABLE ClientTable (
    ClientId VARCHAR(255) PRIMARY KEY,
    ClientName VARCHAR(255) NOT NULL,
    FOREIGN KEY (cid) REFERENCES country(cid)
);

CRAETE TABLE EmpProject (
    FOREIGN KEY (EmpId) REFERENCES employee(EmpId),
    FOREIGN KEY (ProjectId) REFERENCES Project(ProjectId),
    FOREIGN KEY (ClientId) REFERENCES ClientTable(ClientId),
    StartYear INT NOT NULL,
    EndYear INT
);



INSERT INTO employee VALUES (101, 'Isha', 'E-101', '1234567890', 'isha@gmail.com', 105);
INSERT INTO employee VALUES (102, 'Priya', 'E-104', '1234567890', 'priya@yahoo.com', 103);
INSERT INTO employee VALUES (103, 'Neha', 'E-101', '1234567890', 'neha@gmail.com', 101);
INSERT INTO employee VALUES (104, 'Rahul', 'E-102', '1234567890', 'rahul@yahoo.com', 105);
INSERT INTO employee VALUES (105, 'Abhishek', 'E-101', '1234567890', 'abhishek@gmail.com', 102);


INSERT INTO empdept VALUES ('E-101', 'HR', 'Monday', 105);
INSERT INTO empdept VALUES ('E-102', 'Development', 'Tuesday', 101);
INSERT INTO empdept VALUES ('E-103', 'House Keeping', 'Saturday', 103);
INSERT INTO empdept VALUES ('E-104', 'Sales', 'Sunday', 104);
INSERT INTO empdept VALUES ('E-105', 'Purchage', 'Tuesday', 104);


INSERT INTO EmpSalary VALUES (101, 2000, true);
INSERT INTO EmpSalary VALUES (102, 10000, true);
INSERT INTO EmpSalary VALUES (103, 5000, false);
INSERT INTO EmpSalary VALUES (104, 1900, true);
INSERT INTO EmpSalary VALUES (105, 2300, false);


INSERT INTO Project VALUES ('p-1', 23);
INSERT INTO Project VALUES ('p-2', 15);
INSERT INTO Project VALUES ('p-3', 45);
INSERT INTO Project VALUES ('p-4', 2);
INSERT INTO Project VALUES ('p-5', 30);


INSERT INTO country VALUES ('c-1', 'India');
INSERT INTO country VALUES ('c-2', 'USA');
INSERT INTO country VALUES ('c-3', 'China');
INSERT INTO country VALUES ('c-4', 'Pakistan');
INSERT INTO country VALUES ('c-5', 'Russia');


INSERT INTO ClientTable VALUES ('cl-1', 'ABC Group', 'c-1');
INSERT INTO ClientTable VALUES ('cl-2', 'PQR', 'c-1');
INSERT INTO ClientTable VALUES ('cl-3', 'XYZ', 'c-2');
INSERT INTO ClientTable VALUES ('cl-4', 'tech altum', 'c-3');
INSERT INTO ClientTable VALUES ('cl-5', 'mnp', 'c-5');


INSERT INTO EmpProject VALUES (101, 'p-1', 'cl-1', 2010, 2010);
INSERT INTO EmpProject VALUES (102, 'p-2', 'cl-2', 2010, 2012);
INSERT INTO EmpProject VALUES (103, 'p-1', 'cl-3', 2013, NULL);
INSERT INTO EmpProject VALUES (104, 'p-4', 'cl-1', 2014, 2015);
INSERT INTO EmpProject VALUES (105, 'p-4', 'cl-5', 2015, NULL);
