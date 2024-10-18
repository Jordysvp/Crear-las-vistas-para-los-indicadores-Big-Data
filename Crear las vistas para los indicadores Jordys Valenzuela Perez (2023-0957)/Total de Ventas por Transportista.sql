CREATE VIEW TotalVentasPorTransportista AS
SELECT 
    s.CompanyName AS Transportista,
    SUM(od.UnitPrice * od.Quantity) AS TotalVentas
FROM [Northwind].[dbo].[Orders] o
JOIN [Northwind].[dbo].[Order Details] od ON o.OrderID = od.OrderID
JOIN [Northwind].[dbo].[Shippers] s ON o.ShipVia = s.ShipperID
GROUP BY s.CompanyName;
