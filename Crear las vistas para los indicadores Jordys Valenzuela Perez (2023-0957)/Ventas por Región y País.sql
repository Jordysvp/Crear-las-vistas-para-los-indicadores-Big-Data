CREATE VIEW VentasPorRegionPais AS
SELECT 
    o.ShipCountry AS Pais,
    o.ShipRegion AS Region,
    SUM(od.UnitPrice * od.Quantity) AS TotalVentas
FROM [Northwind].[dbo].[Orders] o
JOIN [Northwind].[dbo].[Order Details] od ON o.OrderID = od.OrderID
GROUP BY o.ShipCountry, o.ShipRegion;
