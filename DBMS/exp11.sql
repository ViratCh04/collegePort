-- DOESNT WORK
-- List enumber of employees who live in Delhi and company is in Pune
SELECT enumber FROM employees WHERE ecity = 'Delhi' UNION SELECT enumber FROM company WHERE ccity = 'Pune';
-- this is probably not gonna work

-- List enumber of employees who live in Delhi and company is not Pune
SELECT enumber FROM employees WHERE ecity = 'Delhi' UNION SELECT enumber FROM company WHERE ccity != 'Pune';
