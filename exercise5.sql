USE Northwind;

-- Exercise 1

-- Task 1
SELECT COUNT(*) AS NumberOfOrders FROM dbo.Orders;

-- Task 2
SELECT COUNT(*) AS NumberOfOrders, MIN(OrderDate) AS EarliestOrder, MAX(OrderDate) AS LatestOrder FROM dbo.Orders;

-- Task 3
SELECT COUNT(*) AS NumberOfOrders, MIN(OrderDate) AS EarliestOrder, MAX(OrderDate) AS LatestOrder FROM dbo.Orders WHERE EmployeeID = 1;

-- Exercise 2

-- Task 1
SELECT COUNT(OrderID) AS NumberOfOrders FROM dbo.Orders;

-- Task 2
SELECT COUNT(OrderID) AS NumberOfOrders, CustomerID FROM dbo.Orders GROUP BY CustomerID;

-- Task 3
SELECT COUNT(OrderID) AS NumberOfOrders, CustomerID FROM dbo.Orders GROUP BY CustomerID ORDER BY NumberOfOrders DESC;

-- Exercise 3

-- Task 1
SELECT ProductID, SUM(Quantity) AS TotalSold FROM dbo.[Order Details] GROUP BY ProductID;

-- Task 2
SELECT ProductID, SUM(Quantity * UnitPrice) AS TotalValue FROM dbo.[Order Details] GROUP BY ProductID ORDER BY TotalValue DESC;

-- Task 3
SELECT ProductID, SUM(Quantity * UnitPrice) AS TotalValue FROM dbo.[Order Details] GROUP BY ProductID HAVING  SUM(Quantity * UnitPrice) <= 5000 ORDER BY TotalValue DESC;
