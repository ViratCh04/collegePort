-- 1. Select the detail of the employee whose name start with P

SELECT * FROM employee WHERE EmpName LIKE 'P%';

-- 2. How many permanent candidate take salary more than 5000

SELECT COUNT(*) FROM EmpSalary WHERE Salary > 5000 AND IsPermanent = true;

-- 3. Select the detail of employee whose emailId is in gmail

SELECT * FROM employee WHERE EmailId LIKE '%gmail.com';

-- 4. Select the details of the employee who work either for department E-104 or E-102

SELECT * FROM employee WHERE DeptId = 'E-104' OR DeptId = 'E-102';

-- 5. What is the department name for DeptID E-102?

SELECT DeptName FROM empdept WHERE DeptId = 'E-102';

-- 6. What is total salarythat is paid to permanent employees?

SELECT SUM(Salary) FROM EmpSalary WHERE IsPermanent = true;

-- 7. List name of all employees whose name ends with a

SELECT * FROM employee WHERE EmpName LIKE '%a';

-- 8. List the number of department of employees in each project.

SELECT ProjectId, COUNT(DeptId) FROM empdept GROUP BY ProjectId;

-- 9. How many project started in year 2010

SELECT COUNT(*) FROM Project WHERE StartYear = 2010;

-- 10. How many project started and finished in the same year.

SELECT COUNT(*) FROM Project WHERE StartYear = EndYear;

-- 11. Select the name of the employee whose name's 3rd charactor is 'h'.

SELECT * FROM employee WHERE EmpName LIKE '__h%';

-- 12. Select the department name of the company which is assigned to the employee whose employee id is greater 103.

SELECT DeptName FROM empdept WHERE EmpId > 103;

-- 13. Select the name of the employee who is working under Abhishek.

SELECT * FROM employee WHERE EmpId IN (SELECT EmpId FROM empdept WHERE EmpId = 105);

-- 14. Select the name of the employee who is department head of HR.

SELECT * FROM employee WHERE EmpId IN (SELECT EmpId FROM empdept WHERE DeptName = 'HR');

-- 15. Select the name of the employee head who is permanent.

SELECT * FROM employee WHERE EmpId IN (SELECT EmpId FROM EmpSalary WHERE IsPermanent = true);

-- 16. Select the name and email of the Dept Head who is not Permanent.

SELECT EmpName, EmailId FROM employee WHERE EmpId IN (SELECT EmpId FROM EmpSalary WHERE IsPermanent = false);

-- 17. Select the employee whose department off is Monday

SELECT * FROM employee WHERE EmpId IN (SELECT EmpId FROM empdept WHERE OffDay = 'Monday');

-- 18. Select the Indian clients details

SELECT * FROM ClientTable WHERE cid IN (SELECT cid FROM country WHERE cname = 'India');

-- 19. Show the details of 2nd highest salaried person.

SELECT * FROM employee WHERE EmpId = (SELECT EmpId FROM EmpSalary ORDER BY Salary DESC LIMIT 1 OFFSET 1);
