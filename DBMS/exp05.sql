-- Select names of all employees who live in delhi and salary is between 45k and 60k
SELECT ename FROM emp WHERE ecity = 'Delhi' AND salary BETWEEN 45000 AND 60000;

-- Find names of all employees whose name starts with 'A'
SELECT ename FROM emp WHERE ename LIKE 'A%';

-- Select company name where city is pune and number of employees is not between 8000 and 10000
SELECT cname FROM company WHERE ccity = 'Pune' AND empcount NOT BETWEEN 9000 AND 10000;

-- Find names of all companies taht do not end with 'e'
SELECT cname FROM company WHERE cname NOT LIKE '%e';