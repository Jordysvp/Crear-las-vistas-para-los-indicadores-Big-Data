CREATE VIEW OrdenesEnviadasPorTransportista AS
SELECT 
    s.CompanyName AS Transportista,
    COUNT(o.OrderID) AS NumeroDeOrdenes
FROM [Northwind].[dbo].[Orders] o
JOIN [Northwind].[dbo].[Shippers] s ON o.ShipVia = s.ShipperID
GROUP BY s.CompanyName;
