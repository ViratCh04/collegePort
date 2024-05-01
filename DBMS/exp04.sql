-- Add an attribute to emp table called designation 
ALTER TABLE emp ADD COLUMN designation VARCHAR(20);

-- Change datatype of salary attribute to float
ALTER TABLE emp MODIFY COLUMN salary FLOAT;

-- Drop table deptname from emp table
ALTER TABLE emp DROP COLUMN deptname;

-- Add company column to emp table
ALTER TABLE emp ADD COLUMN company VARCHAR(20);

-- Add data to company column
-- UPDATE emp SET company = 'Google' WHERE ename = 'Amit';
-- UPDATE emp SET company = 'Apple' WHERE ename = 'Anil';
-- UPDATE emp SET company = 'Microsoft' WHERE ename = 'Jai';
-- UPDATE emp SET company = 'Oracle' WHERE ename = 'Aarav';
-- UPDATE emp SET company = 'Facebook' WHERE ename = 'Bhavya';
-- UPDATE emp SET company = 'Apple' WHERE ename = 'Ansh';
-- UPDATE emp SET company = 'Oracle' WHERE ename = 'Virat';


