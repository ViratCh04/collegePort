-- Rename the database to employees_db
ALTER DATABASE employees RENAME TO employees_db;

-- Rename the emp table to employees
RENAME TABLE emp TO employees;

-- Change name of attribute ename to empname in employees table
ALTER TABLE employees CHANGE COLUMN ename empname VARCHAR(20);