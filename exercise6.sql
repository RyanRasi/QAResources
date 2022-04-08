USE Northwind;

-- Exercise 1

-- Task 1
SELECT c.CustomerID, c.CompanyName, c.ContactName, c.City, o.OrderID, o.OrderDate FROM dbo.Customers AS c RIGHT OUTER JOIN dbo.Orders AS o ON c.customerID = o.customerID;

-- Task 2
SELECT c.CustomerID, c.CompanyName, c.ContactName, c.City, o.OrderID, o.OrderDate FROM dbo.Customers AS c RIGHT OUTER JOIN dbo.Orders AS o ON c.customerID = o.customerID WHERE c.country = 'UK' ORDER BY c.CompanyName;

-- Task 3
SELECT c.CustomerID, c.CompanyName, c.ContactName, o.OrderID, o.OrderDate, od.ProductID, od.Quantity, p.ProductName FROM dbo.Customers AS c RIGHT OUTER JOIN dbo.Orders AS o ON c.customerID = o.customerID INNER JOIN dbo.[Order Details] AS od ON o.OrderID = od.OrderID JOIN dbo.Products AS p ON od.productID = p.productID WHERE c.country = 'UK' ORDER BY c.CompanyName;

-- Exercise 2

-- Task 1
SELECT COUNT(*) FROM dbo.Customers;

-- Task 2
SELECT c.CompanyName, COUNT(o.OrderID) AS NumOrders FROM dbo.Customers AS c JOIN dbo.Orders AS o ON o.CustomerID = c.CustomerID GROUP BY c.CompanyName ORDER BY NumOrders;

-- Task 3
SELECT c.CompanyName, COUNT(o.OrderID) AS NumOrders, MIN(o.OrderDate) AS MinDate FROM dbo.Orders AS o RIGHT OUTER JOIN dbo.Customers AS c ON o.CustomerID = c.CustomerID GROUP BY c.CompanyName ORDER BY NumOrders;

-- Exercise 3

-- Task 1
SELECT CompanyName, ContactName, Phone FROM dbo.Customers;