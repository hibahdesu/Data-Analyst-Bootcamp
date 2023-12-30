
SELECT * FROM EmployeeDemographics;

SELECT FirstName, LastName, Age FROM EmployeeDemographics
WHERE Age IS NOT NULL
ORDER BY Age;



SELECT FirstName, LastName, Age,
CASE 
	WHEN Age BETWEEN 27 AND 30 THEN 'YOUNG'
	WHEN Age = 38 THEN 'Stanley'
	WHEN Age > 30 THEN 'OLD PERSON'
	
	ELSE 'TEENS'
END
FROM EmployeeDemographics
WHERE Age IS NOT NULL
ORDER BY Age;


SELECT * FROM EmployeeDemographics
JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;

SELECT FirstName, LastName, JobTitle, Salary 
FROM EmployeeDemographics
JOIN EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;



SELECT FirstName, LastName, JobTitle, Salary,
CASE 
	WHEN JobTitle = 'Salesman' THEN Salary + (Salary * 0.10)
	WHEN JobTitle = 'Accountant' THEN Salary + (Salary * 0.05)
	WHEN JobTitle = 'HR' THEN Salary + (Salary * .000001)
	ELSE Salary + (Salary * 0.03)
END AS SalaryAfterRaise
FROM EmployeeDemographics
JOIN EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;