
-- Names of employees who work in delhi
SELECT ename FROM emp WHERE ecity = 'Delhi';

-- Increase salary of all employees by 500
UPDATE emp SET salary = salary + 500;

-- Find companies with more than 10000 employees
SELECT cname FROM company WHERE empcount > 10000;

-- Change company city to hyderabad where company name is oracle
UPDATE company SET ccity = 'Hyderabad' WHERE cname = 'Oracle';
