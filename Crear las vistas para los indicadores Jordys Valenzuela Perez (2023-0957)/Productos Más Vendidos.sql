CREATE VIEW ProductosMasVendidos AS
SELECT 
    p.ProductName,
    SUM(od.Quantity) AS CantidadVendida
FROM [Northwind].[dbo].[Order Details] od
JOIN [Northwind].[dbo].[Products] p ON od.ProductID = p.ProductID
GROUP BY p.ProductName
