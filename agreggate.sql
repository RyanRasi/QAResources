use northwind;

SELECT * FROM dbo.orders;

SELECT SUM(freight) AS SumF,AVG(COALESCE(freight, 0)) AS AvgF, MIN(freight) AS MinF, MAX(freight) AS MaxF FROM dbo.Orders;

SELECT COUNT(*) FROM dbo.Employees;

SELECT COUNT(region) FROM dbo.Employees;

SELECT COUNT(DISTINCT country) FROM dbo.Customers;

SELECT MIN(companyName), MAX(companyName) from dbo.Customers;

SELECT MIN(orderdate), MAX(orderDate) FROM dbo.orders;

SELECT customerID, SUM(freight) AS SumF,AVG(COALESCE(freight, 0)) AS AvgF, MIN(freight) AS MinF, MAX(freight) AS MaxF FROM dbo.Orders GROUP BY customerID;

SELECT customerID, SUM(freight) AS SumF,AVG(COALESCE(freight, 0)) AS AvgF, MIN(freight) AS MinF, MAX(freight) AS MaxF FROM dbo.Orders WHERE customerID LIKE = '' GROUP BY customerID;

-- Inner Join - Only customers that have orders

SELECT C.CompanyName, O.OrderDate FROM dbo.Customers AS C INNER JOIN dbo.Orders AS O ON C.customerID = O.customerID;

-- Left Outer Join - Customers that have orders first then customers without orders
SELECT C.CompanyName, O.OrderDate FROM dbo.Customers AS C LEFT OUTER JOIN dbo.Orders AS O ON C.customerID = O.customerID;

-- Right Outer Join - Orders that have customers
SELECT C.CompanyName, O.OrderDate FROM dbo.Customers AS C RIGHT OUTER JOIN dbo.Orders AS O ON C.customerID = O.customerID;

SELECT C.CompanyName, O.OrderDate FROM dbo.Customers AS C FULL OUTER JOIN dbo.Orders AS O ON C.customerID = O.customerID;

SELECT companyname, city, phone FROM dbo.Customers
UNION
SELECT companyname, city, phone FROM dbo.Suppliers
UNION
SELECT Lastname, city, homephone FROM dbo.Employees;

SELECT companyname, city, phone FROM dbo.Customers
UNION ALL
SELECT companyname, city, phone FROM dbo.Suppliers
UNION ALL
SELECT Lastname, city, homephone FROM dbo.Employees;

SELECT city FROM dbo.Customers
INTERSECT
SELECT city FROM dbo.Suppliers;

SELECT DISTINCT C.city FROM dbo.Customers as C INNER JOIN dbo.Suppliers AS S ON C.city = S.city AND C.country = S.country;

SELECT city FROM dbo.Customers
EXCEPT
SELECT city FROM dbo.Suppliers;

SELECT DISTINCT C.city FROM dbo.Customers as C LEFT JOIN dbo.Suppliers AS S ON C.city = S.city AND C.country = S.country WHERE S.city IS NULL;

