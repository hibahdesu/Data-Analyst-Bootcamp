
--PARTITION BY

SELECT * FROM EmployeeDemographics;

SELECT * FROM EmployeeDemographics DEM
JOIN EmployeeSalary SAL
	ON DEM.EmployeeID = SAL.EmployeeID;

SELECT FirstName, LastName, Gender, Salary 
FROM EmployeeDemographics DEM
JOIN EmployeeSalary SAL 
	ON DEM.EmployeeID = SAL.EmployeeID;

--PARTITION BY
SELECT FirstName, LastName, Gender, Salary,
COUNT(Gender) OVER (PARTITION BY Gender) as TotalGender
FROM EmployeeDemographics DEM
JOIN EmployeeSalary SAL 
	ON DEM.EmployeeID = SAL.EmployeeID;


--GROUP BY
SELECT FirstName, LastName, Gender, Salary,
COUNT(Gender) 
FROM EmployeeDemographics DEM
JOIN EmployeeSalary SAL 
	ON DEM.EmployeeID = SAL.EmployeeID
GROUP BY FirstName, LastName, Gender, Salary;

SELECT Gender,
COUNT(Gender) 
FROM EmployeeDemographics DEM
JOIN EmployeeSalary SAL 
	ON DEM.EmployeeID = SAL.EmployeeID
GROUP BY Gender;

SELECT * FROM EmployeeSalary;