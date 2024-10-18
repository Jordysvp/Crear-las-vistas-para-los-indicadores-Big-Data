CREATE VIEW PedidosPorEmpleado AS
SELECT 
    e.EmployeeID AS EmpleadoID,
    e.FirstName + ' ' + e.LastName AS Empleado,
    COUNT(o.OrderID) AS NumeroDePedidos
FROM [Northwind].[dbo].[Orders] o
JOIN [Northwind].[dbo].[Employees] e ON o.EmployeeID = e.EmployeeID
GROUP BY e.EmployeeID, e.FirstName, e.LastName;
