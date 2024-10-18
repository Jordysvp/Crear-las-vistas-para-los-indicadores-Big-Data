CREATE VIEW TotalVentasPorCliente AS
SELECT 
    c.CompanyName AS Cliente,
    SUM(od.UnitPrice * od.Quantity) AS TotalVentas
FROM [Northwind].[dbo].[Orders] o
JOIN [Northwind].[dbo].[Order Details] od ON o.OrderID = od.OrderID
JOIN [Northwind].[dbo].[Customers] c ON o.CustomerID = c.CustomerID
GROUP BY c.CompanyName;
