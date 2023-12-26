/* Employee TABLE */
SELECT * FROM Employee;

SELECT gender FROM Employee;

SELECT gender FROM Employee GROUP BY gender;

SELECT gender, COUNT(gender) FROM Employee  GROUP BY gender;

SELECT gender, age, COUNT(gender) FROM Employee  GROUP BY gender, age;

SELECT  gender, COUNT( gender) FROM Employee WHERE age > 31 GROUP BY gender;

SELECT  gender, COUNT( gender) AS COUNT_GENDER FROM Employee WHERE age > 31 GROUP BY gender ORDER BY COUNT_GENDER;

SELECT  gender, COUNT( gender) AS COUNT_GENDER FROM Employee WHERE age > 31 GROUP BY gender ORDER BY COUNT_GENDER DESC;

SELECT  gender, COUNT( gender) AS COUNT_GENDER FROM Employee WHERE age > 31 GROUP BY gender ORDER BY COUNT_GENDER ASC;

SELECT * FROM Employee ORDER BY age;

SELECT * FROM Employee ORDER BY age DESC;

SELECT * FROM Employee ORDER BY age, gender;

SELECT * FROM Employee ORDER BY age DESC, gender DESC;


/* empSalary TABLE*/
SELECT * FROM empSalary;
