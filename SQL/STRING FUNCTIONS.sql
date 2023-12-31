
/* STRING FUNCTIONS 
	-TPIM
	-LTRIM
	-RTRIM
	-REPLACE
	-SUBSTRING
	-UPPER
	-LOWER
*/

CREATE TABLE EmployeeErrors (
EmployeeID VARCHAR(50),
FirstName VARCHAR(50), 
LastName VARCHAR(50)
);

INSERT INTO EmployeeErrors VALUES 
(
'1001   ', 'Jimbo', 'Halbert'
),
(
'  1002', 'Pamela', 'Beasely'
),
(
'1005', 'TOby', 'Flenderson - Fired'
)
;

SELECT * FROM EmployeeErrors;

--USING TRIM, LTRIM, RTRIM
SELECT EmployeeID, TRIM(EmployeeID) AS IDTRIM
FROM EmployeeErrors;


SELECT EmployeeID, LTRIM(EmployeeID) AS IDLTRIM
FROM EmployeeErrors;

SELECT EmployeeID, RTRIM(EmployeeID) AS IDRTRIM
FROM EmployeeErrors;

--USING REPLACE

SELECT * FROM EmployeeErrors;

SELECT LastName, REPLACE(LastName, '- Fired', '') AS LASTNAEMFIEXED
FROM EmployeeErrors;

--USING SUBSTRING

SELECT SUBSTRING(FirstName,1,3) as SUB
FROM EmployeeErrors;


SELECT * FROM EmployeeErrors;

SELECT ERR.FirstName, SUBSTRING(ERR.FirstName, 1,3), DEM.FirstName, SUBSTRING(DEM.FirstName, 1, 3)
FROM EmployeeErrors ERR
JOIN EmployeeDemographics DEM
ON SUBSTRING(ERR.FirstName, 1,3) = SUBSTRING(DEM.FirstName, 1, 3);

--USING UPPER AND LOWER

SELECT FirstName, LOWER(FirstName)
FROM EmployeeErrors;

SELECT FirstName, UPPER(FirstName)
FROM EmployeeErrors;