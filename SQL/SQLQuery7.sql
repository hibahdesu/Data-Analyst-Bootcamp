SELECT * FROM Employee INNER JOIN empSalary 
ON Employee.empID = empSalary.empId;



SELECT * FROM Employee FULL OUTER JOIN empSalary 
ON Employee.empID = empSalary.empId;