SELECT * FROM EmployeeDemographics LEFT OUTER JOIN EmployeeSalary 
	ON EmployeeDemographics.EmployeeID = EmployeeSalarY.EmployeeID;

SELECT * FROM EmployeeDemographics INNER JOIN EmployeeSalary 
	ON EmployeeDemographics.EmployeeID = EmployeeSalarY.EmployeeID;

SELECT * FROM EmployeeDemographics FULL OUTER JOIN EmployeeSalary 
	ON EmployeeDemographics.EmployeeID = EmployeeSalarY.EmployeeID;


SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary, Age 
FROM EmployeeDemographics INNER JOIN EmployeeSalarY
ON EmployeeDemographics.EmployeeID = EmployeeSalarY.EmployeeID;

SELECT EmployeeSalarY.EmployeeID, FirstName, LastName, JobTitle, Salary, Age 
FROM EmployeeDemographics INNER JOIN EmployeeSalarY
ON EmployeeDemographics.EmployeeID = EmployeeSalarY.EmployeeID;

SELECT EmployeeSalarY.EmployeeID, FirstName, LastName, JobTitle, Salary, Age 
FROM EmployeeDemographics RIGHT OUTER JOIN EmployeeSalarY
ON EmployeeDemographics.EmployeeID = EmployeeSalarY.EmployeeID;

SELECT EmployeeSalarY.EmployeeID, FirstName, LastName, JobTitle, Salary, Age 
FROM EmployeeDemographics LEFT OUTER JOIN EmployeeSalarY
ON EmployeeDemographics.EmployeeID = EmployeeSalarY.EmployeeID;

SELECT *
FROM EmployeeDemographics FULL OUTER JOIN EmployeeSalarY
ON EmployeeDemographics.EmployeeID = EmployeeSalarY.EmployeeID;

SELECT EmployeeSalarY.EmployeeID, FirstName, LastName, Salary 
FROM EmployeeDemographics INNER JOIN EmployeeSalarY
ON EmployeeDemographics.EmployeeID = EmployeeSalarY.EmployeeID
WHERE FirstName <> 'Michael'
ORDER BY Salary;

SELECT EmployeeSalarY.EmployeeID, FirstName, LastName, Salary 
FROM EmployeeDemographics INNER JOIN EmployeeSalarY
ON EmployeeDemographics.EmployeeID = EmployeeSalarY.EmployeeID
WHERE FirstName <> 'Michael'
ORDER BY Salary DESC;

SELECT JobTitle, Salary 
FROM EmployeeDemographics INNER JOIN EmployeeSalarY
ON EmployeeDemographics.EmployeeID = EmployeeSalarY.EmployeeID
WHERE JobTitle = 'Salesman';


SELECT JobTitle, AVG(Salary)
FROM EmployeeDemographics INNER JOIN EmployeeSalarY
ON EmployeeDemographics.EmployeeID = EmployeeSalarY.EmployeeID
WHERE JobTitle = 'Salesman'
GROUP BY JobTitle;