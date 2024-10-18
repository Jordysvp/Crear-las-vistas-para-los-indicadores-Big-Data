CREATE VIEW OrdenesPorCliente AS
SELECT 
    c.CustomerID AS ClienteID,
    c.CompanyName AS Cliente,
    COUNT(o.OrderID) AS NumeroDeOrdenes
FROM [Northwind].[dbo].[Orders] o
JOIN [Northwind].[dbo].[Customers] c ON o.CustomerID = c.CustomerID
GROUP BY c.CustomerID, c.CompanyName;
