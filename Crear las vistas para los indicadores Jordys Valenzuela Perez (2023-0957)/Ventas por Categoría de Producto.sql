CREATE VIEW VentasPorCategoriaProducto AS
SELECT 
    c.CategoryName,
    SUM(od.UnitPrice * od.Quantity) AS TotalVentas
FROM [Northwind].[dbo].[Products] p
JOIN [Northwind].[dbo].[Categories] c ON p.CategoryID = c.CategoryID
JOIN [Northwind].[dbo].[Order Details] od ON p.ProductID = od.ProductID
GROUP BY c.CategoryName;
