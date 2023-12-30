
--CTEs

WITH CTE_EMPLOYEE AS (SELECT FirstName, LastName, Gender, Salary,
COUNT(Gender) OVER (PARTITION BY Gender) AS TotalGender,
AVG(Salary) OVER (PARTITION BY Salary) AS AvgSalary
FROM EmployeeDemographics DEM
JOIN EmployeeSalary SAL
ON DEM.EmployeeID = SAL.EmployeeID
WHERE Salary > '45000'
)



SELECT FirstName, AvgSalary
FROM CTE_EMPLOYEE;


