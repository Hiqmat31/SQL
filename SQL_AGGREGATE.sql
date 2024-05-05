SELECT COUNT (*)
FROM HumanResources.Employee

SELECT COUNT (OrganizationLevel)
FROM HumanResources.Employee

SELECT Gender, COUNT(*)
FROM HumanResources.Employee
GROUP BY Gender;


SELECT OrganizationLevel, COUNT(OrganizationLevel) AS 'N_Organizatonlevel'
FROM HumanResources.Employee
WHERE OrganizationLevel IS NOT NULL
GROUP BY OrganizationLevel


SELECT YEAR(Hiredate) AS 'YEAR'
FROM HumanResources.Employee

SELECT MONTH(Hiredate) AS 'MONTH'
FROM HumanResources.Employee

SELECT DAY(Hiredate)
FROM HumanResources.Employee

SELECT TOP 2 *
FROM Sales.SalesOrderHeader


SELECT TOP 1 YEAR(ShipDate) AS 'SHIP_YEAR', SUM(TaxAmt) AS 'TOTAL_TAX'
FROM Sales.SalesOrderHeader
GROUP BY YEAR(ShipDate)
ORDER BY 'TOTAL_TAX' DESC;