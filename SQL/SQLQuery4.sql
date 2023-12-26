SELECT * FROM Employee;

SELECT firstName FROM Employee;

SELECT firstName, lastName FROM Employee;

SELECT TOP 5 * FROM Employee;

SELECT DISTINCT(empID) FROM Employee;

/*UNIQURE VALUES ONLY */
SELECT DISTINCT(gender) FROM Employee;

SELECT COUNT(lastName) FROM Employee;

SELECT COUNT(gender) FROM Employee;

SELECT COUNT(age) AS AGECOUNT FROM Employee;

SELECT * FROM empSalary;

SELECT MIN(salary) AS MIN_SALARY FROM empSalary;

SELECT MAX(salary) AS MAX_SALARY FROM empSalary;

SELECT AVG(salary) AS AVG_SALARY FROM empSalary;

SELECT * FROM Employee WHERE firstName = 'Jim';

SELECT * FROM Employee WHERE firstName <> 'Jim';

SELECT * FROM Employee WHERE age > 30;

SELECT * FROM Employee WHERE age >= 30;

SELECT * FROM Employee WHERE age <= 32;

SELECT * FROM Employee WHERE age <= 32 AND gender = 'Male';

SELECT * FROM Employee WHERE age <= 32 OR gender = 'Male';

/* S IN THE BEGINING OF THE NAME ONLY */
SELECT * FROM Employee WHERE lastName LIKE 'S%';

/* S IN ANY NAME  */
SELECT * FROM Employee WHERE lastName LIKE '%S%';

SELECT * FROM Employee WHERE lastName LIKE 'S%o%';

SELECT * FROM Employee WHERE firstName IS NULL;

SELECT * FROM Employee WHERE firstName IS NOT NULL;

SELECT * FROM Employee WHERE firstName IN ('Jim', 'Michael');
