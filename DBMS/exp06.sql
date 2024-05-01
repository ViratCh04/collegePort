-- Find sum and average of salary of all employees
SELECT SUM(salary), AVG(salary) FROM emp;

-- Find number of employees who live in delhi
SELECT COUNT(*) FROM emp WHERE ecity = 'Delhi';

-- Find the maximum and minimum salary of all employees in delhi
SELECT MAX(salary), MIN(salary) FROM emp WHERE ecity = 'Delhi';