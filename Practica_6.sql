use Farmacia2

-- SUBCONSULTA DE TABLA  -- 
-- 1 Con SELECT * FROM --
-- 1 de la columna -- 
-- 1 con WITH --

SELECT * FROM Producto 
WHERE Producto.Id_Producto = (SELECT Id_Producto FROM Producto WHERE Id_Producto = 111)

SELECT * FROM Pedido_Cliente
WHERE Pedido_Cliente.Id_Pedido = (SELECT Id_Pedido FROM Pedido_Cliente WHERE Id_Pedido = 5)

SELECT * FROM Proveedor
WHERE Proveedor.Id_Proveedor = (SELECT Id_Proveedor FROM Proveedor WHERE Id_Proveedor = 336)

SELECT * FROM Tipo_Pago
WHERE Tipo_Pago.Descripcion = (SELECT Descripcion FROM Tipo_Pago WHERE Descripcion = 'Direct Debit')

-- JOINS -- 



SELECT Producto.Nombre_Producto, Pedido_Cliente.Id_Pedido 
FROM Producto
INNER JOIN Pedido_Cliente ON Producto.Id_Producto=Producto.Id_Producto
 
SELECT Pedido_Cliente.Id_Pedido, Farmacia_Trabajador.Id_Trabajador
FROM Pedido_Cliente
RIGHT JOIN Farmacia_Trabajador ON Pedido_Cliente.Id_Pedido=Pedido_Cliente.Id_Pedido

SELECT Farmacia_Sucursal.Direccion, Pedido_Cliente.Id_Pedido 
FROM Farmacia_Sucursal
LEFT JOIN Pedido_Cliente ON Farmacia_Sucursal_Direccion=Farmacia_Sucursal

SELECT top 1 *
		FROM
		           (
			SELECT Edad, (
					SELECT COUNT(Edad)
					FROM Empleados AS E
					WHERE E.Edad=Empleados.Edad
				          ) AS [Cantidad]
			FROM Empleados
		           ) AS NC
		WHERE NC.Cantidad > 1
