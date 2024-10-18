CREATE VIEW VentasTotalesPorPeriodo AS
SELECT 
	o.OrderDate,
    YEAR(o.OrderDate) AS Year,
    MONTH(o.OrderDate) AS Mes,
    SUM(od.UnitPrice * od.Quantity) AS TotalVentas
FROM [Northwind].[dbo].[Orders] o
JOIN [Northwind].[dbo].[Order Details] od ON o.OrderID = od.OrderID
GROUP BY YEAR(o.OrderDate), MONTH(o.OrderDate), o.OrderDate;
