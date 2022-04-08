use Northwind;

select * from dbo.Employees;

select FirstName + ' ' + LastName as [Full Name] from dbo.Employees;

select ProductName, UnitPrice, UnitsInStock, UnitsOnOrder, UnitPrice * (UnitsInStock + UnitsOnOrder) as SalesCalc from dbo.Products;

-- Retrieving

SELECT * FROM dbo.Products;

SELECT ProductID, ProductName, UnitPrice, UnitsInStock FROM dbo.Products;

SELECT UnitPrice * UnitsInStock AS CurrentStockValue FROM dbo.Products;

SELECT UnitPrice * (UnitsInStock + UnitsOnOrder) AS FutureStockValue FROM dbo.Products;

SELECT ProductID, ProductName, UnitPrice, UnitsInStock, UnitPrice * UnitsInStock AS CurrentStockValue, UnitPrice * (UnitsInStock + UnitsOnOrder) AS FutureStockValue FROM dbo.Products;

-- Exercise 2

SELECT FirstName + ' ' + LastName AS FullName, Extension FROM dbo.employees;

-- Filtering

SELECT * FROM dbo.Customers WHERE city = 'london' OR city = 'paris';

SELECT * FROM dbo.Customers WHERE city in ('london', 'paris');

SELECT * FROM dbo.Customers WHERE city not in ('london', 'paris');

SELECT * FROM dbo.Products WHERE (CategoryID = 7 OR CategoryID = 8) AND unitPrice > 30;

SELECT * FROM dbo.Orders WHERE OrderDate = '07/04/1996';

SELECT * FROM dbo.Orders WHERE OrderDate = '19960704'; -- YYYYMMDD

SELECT * FROM dbo.Employees WHERE region IS NULL;

SELECT * FROM dbo.Employees WHERE region IS NOT NULL;

SELECT EmployeeID, City, Region, Country, City + ' ' + ISNULL(Region, '') + ' ' + Country as Place FROM dbo.Employees;

SELECT EmployeeID, City, Region, Country, City + ' ' + coalesce(Region, '') + ' ' + Country as Place FROM dbo.Employees;

SELECT * FROM dbo.Customers WHERE city LIKE 'L%'; -- % Zero or more characters

SELECT * FROM dbo.Customers WHERE city LIKE 'L_'; -- % 1 characters

SELECT * FROM dbo.Customers WHERE city LIKE 'L_%'; -- % 1 or more characters

SELECT * FROM dbo.Customers WHERE city LIKE 'L[aeiou]_%'; -- [] Any single char in the range

SELECT * FROM dbo.Customers WHERE city LIKE 'L[a-eo]_%'; -- [] Any single char in the range

SELECT * FROM dbo.Customers WHERE city LIKE 'L[^aeiou]_%'; -- [] Any single char not in the range

-- Sorting

SELECT * FROM dbo.Customers ORDER BY country DESC, city ASC;

SELECT DISTINCT country from dbo.Customers;

SELECT TOP 5 * FROM dbo.Orders ORDER BY freight DESC;

SELECT TOP 5 PERCENT * FROM dbo.Orders ORDER BY freight DESC;

