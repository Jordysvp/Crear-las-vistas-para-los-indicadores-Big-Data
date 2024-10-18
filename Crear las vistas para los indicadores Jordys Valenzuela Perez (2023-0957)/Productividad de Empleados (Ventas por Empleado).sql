CREATE VIEW ProductividadEmpleados AS
SELECT 
    e.FirstName + ' ' + e.LastName AS Empleado,
    SUM(od.UnitPrice * od.Quantity) AS TotalVentas
FROM [Northwind].[dbo].[Orders] o
JOIN [Northwind].[dbo].[Employees] e ON o.EmployeeID = e.EmployeeID
JOIN [Northwind].[dbo].[Order Details] od ON o.OrderID = od.OrderID
GROUP BY e.FirstName, e.LastName;
