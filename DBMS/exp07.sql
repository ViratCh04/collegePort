-- List all employee in descending order
SELECT ename FROM emp ORDER BY ename DESC;

-- Find number of emp in each company
SELECT company, COUNT(*) FROM emp GROUP BY company;

-- List all company where avg salary of dept is greater than 60k
SELECT company FROM emp GROUP BY company HAVING AVG(salary) > 60000;