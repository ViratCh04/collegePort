-- Create database employees
CREATE DATABASE employees;

-- Use the employees database and create tables
USE employees;

-- Create the emp table
CREATE TABLE emp (
    ename VARCHAR(20),
    ecity VARCHAR(20),
    salary INT,
    eaddress VARCHAR(50),
    enumber INT,
    deptname VARCHAR(20)
    -- company VARCHAR(20) -- Added in exp04.sql
);

-- Insert data into the emp table

INSERT INTO emp VALUES ('Amit', 'Delhi', 50000, '123 Main St', 1, 'IT');
INSERT INTO emp VALUES ('Anil', 'Pune', 60000, '456 Elm St', 2, 'HR');
INSERT INTO emp VALUES ('Jani', 'Hyderbad', 70000, '789 Oak St', 3, 'Finance');
INSERT INTO emp VALUES ('Aarav', 'Mumbai', 80000, '101 Pine St', 4, 'Marketing');
INSERT INTO emp VALUES ('Bhavya', 'Delhi', 65000, '202 Maple St', 5, 'Sales');
INSERT INTO emp VALUES ('Virat', 'Delhi', 55000, '203 Maple St', 6, 'Sales');
INSERT INTO emp VALUES ('Ansh', 'Goa', 90000, '204 Maple St', 7, 'Sales');

-- Create the company table

CREATE TABLE company (
    cname VARCHAR(20),
    ccity VARCHAR(20),
    empcount INT
);

-- Insert data into the company table

INSERT INTO company VALUES ('Google', 'Delhi', 18000);
INSERT INTO company VALUES ('Apple', 'Pune', 8800);
INSERT INTO company VALUES ('Microsoft', 'Hyderabad', 12000);
INSERT INTO company VALUES ('Oracle', 'Pune', 9000);
INSERT INTO company VALUES ('Facebook', 'Delhi', 8000);
