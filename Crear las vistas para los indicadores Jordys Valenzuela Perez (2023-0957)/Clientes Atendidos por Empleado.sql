CREATE VIEW ClientesAtendidosPorEmpleado AS
SELECT 
    e.FirstName + ' ' + e.LastName AS Empleado,
    COUNT(DISTINCT o.CustomerID) AS ClientesAtendidos
FROM [Northwind].[dbo].[Orders] o
JOIN [Northwind].[dbo].[Employees] e ON o.EmployeeID = e.EmployeeID
GROUP BY e.FirstName, e.LastName;
