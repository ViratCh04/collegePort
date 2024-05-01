-- Retrieve complete record of employee and its company from both table using join
SELECT * FROM employees JOIN company ON employees.company = company.cname;

-- List of all employees who work in microsoft
SELECT * FROM employees JOIN company ON employees.company = company.cname WHERE company.cname = 'Microsoft';