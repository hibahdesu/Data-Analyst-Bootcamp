SELECT * FROM EmployeeDemographics
JOIN EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;


--HAVE CLAUSE
SELECT JobTitle, COUNT(JobTitle) AS JOB_COUNT FROM EmployeeDemographics
JOIN EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle;


--We should put HAVING after GROUP BY  and not before it as it will run an error if we do so
SELECT JobTitle, COUNT(JobTitle) AS JOB_COUNT FROM EmployeeDemographics
JOIN EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING COUNT(JobTitle) > 1;

SELECT JobTitle, AVG(Salary) AS SALARY_AVG FROM EmployeeDemographics
JOIN EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
ORDER BY AVG(Salary);


--We should put HAVING before ORDER BY AND before GROUP BY
SELECT JobTitle, AVG(Salary) AS SALARY_AVG FROM EmployeeDemographics
JOIN EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING AVG(Salary) > 45000
ORDER BY AVG(Salary)
;