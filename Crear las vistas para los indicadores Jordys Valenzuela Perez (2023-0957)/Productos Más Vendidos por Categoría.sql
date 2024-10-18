CREATE VIEW ProductosMasVendidosPorCategoria AS
SELECT 
    c.CategoryName,
    p.ProductName,
    SUM(od.Quantity) AS CantidadVendida
FROM [Northwind].[dbo].[Order Details] od
JOIN [Northwind].[dbo].[Products] p ON od.ProductID = p.ProductID
JOIN [Northwind].[dbo].[Categories] c ON p.CategoryID = c.CategoryID
GROUP BY c.CategoryName, p.ProductName
