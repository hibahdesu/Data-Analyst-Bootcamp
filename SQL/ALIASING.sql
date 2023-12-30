SELECT FirstName FN FROM EmployeeDemographics;

--ALIASING
SELECT FirstName + ' ' + LastName AS FullName 
FROM EmployeeDemographics;

SELECT Age FROM EmployeeDemographics;

SELECT AVG(Age) FROM EmployeeDemographics;

SELECT AVG(Age) AS AVG_AGE FROM EmployeeDemographics;

SELECT DEMO.EmployeeID, DEMO.Age FROM EmployeeDemographics AS DEMO;

SELECT DEMO.EmployeeID, SAL.Salary, SAL.JobTitle FROM EmployeeDemographics AS DEMO
JOIN EmployeeSalary AS SAL 
ON DEMO.EmployeeID = SAL.EmployeeID;




