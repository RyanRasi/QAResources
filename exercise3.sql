-- Exercise 1

-- Task 1
use northwind;

SELECT ProductID, ProductName, CategoryID, Discontinued, UnitPrice FROM dbo.Products;

SELECT ProductID, ProductName, CategoryID, Discontinued, UnitPrice FROM dbo.Products WHERE Discontinued = 0;

-- Task 2

SELECT ProductID, ProductName, CategoryID, Discontinued, UnitPrice FROM dbo.Products WHERE Discontinued = 0 AND CategoryID = 1;

SELECT ProductID, ProductName, CategoryID, Discontinued, UnitPrice FROM dbo.Products WHERE Discontinued = 0 AND CategoryID = 1 AND UnitPrice >= 40;

-- Exercise 2

-- Task 1

SELECT OrderID, CustomerID, OrderDate FROM dbo.Orders;

SELECT OrderID, CustomerID, OrderDate FROM dbo.Orders WHERE CustomerID IN ('ALFKI', 'ERNSH', 'SIMOB');

-- Task 2 & 3

SELECT OrderID, CustomerID, OrderDate FROM dbo.Orders WHERE CustomerID IN ('ALFKI', 'ERNSH', 'SIMOB') AND OrderDate BETWEEN '19970801' AND '19970831';

-- Exercise 3

-- Task 1

SELECT CustomerID, CompanyName, ContactTitle, Phone FROM dbo.Customers;

SELECT CustomerID, CompanyName, ContactTitle, Phone FROM dbo.Customers WHERE ContactTitle LIKE 'sales_%';

-- Task 2

SELECT CustomerID, CompanyName, ContactTitle, Phone FROM dbo.Customers WHERE ContactTitle LIKE '%sales%';

-- Task 3

SELECT CustomerID, CompanyName, ContactTitle, Phone FROM dbo.Customers WHERE ContactTitle LIKE '%SALES%' OR ContactTitle LIKE '%Sales%' OR ContactTitle LIKE '%sales%' OR ContactTitle LIKE '%SaLeS%';

-- Exercise 4

-- Task 1

SELECT CustomerID, CompanyName, ContactName, ContactTitle, Phone, Fax from dbo.Customers;

SELECT CustomerID, CompanyName, ContactName, ContactTitle, Phone, Fax from dbo.Customers WHERE fax IS NULL;

-- Exercise 5

SELECT ProductID, ProductName, UnitPrice, UnitsInStock, UnitsOnOrder, UnitPrice * UnitsInStock AS CurrentStockValue, (UnitsInStock + UnitsOnOrder) * UnitPrice AS FutureStockValue FROM dbo.Products WHERE (UnitsInStock + UnitsOnOrder) * UnitPrice > 2000;