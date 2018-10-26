Use Farmacia2
-- VIEW --

CREATE VIEW Nombres_Clientes AS
SELECT Nombre_Cliente
FROM Farmacia_Cliente 
WHERE Nombre_Cliente = 'Katya';

select * from Nombres_Clientes

-- SELECT Común -- 

SELECT Id_TipoTrabajo AS Id_Tipo_Trabajo FROM Tipo_Trabajo

SELECT Nombre_Cliente + ' ' + Apellido_Cliente AS Clientes FROM Farmacia_Cliente

SELECT Nombre_Cliente + ' ' + Direccion_Cliente AS Clientes_Y_Direcciones FROM Farmacia_Cliente

SELECT Descripcion_TipoTrabajo AS Trabajos_De_Farmacia FROM Tipo_Trabajo 

SELECT Precio AS Ganancias_De_Pedidos FROM Pedido_Cliente 

-- SELECT TOP --

SELECT TOP 5 Nombre_Cliente AS TOP_5_Nombre_Cliente FROM Farmacia_Cliente

SELECT TOP 8 Apellido_Cliente AS TOP_8_Apellido_Cliente FROM Farmacia_Cliente

SELECT TOP 3 Telefono_Proveedor AS TOP_3_TELEFONSDPROVEEDOR FROM Proveedor

SELECT TOP 4 Nombre_Producto AS COSAS_QUE_TIENE_LA_FARMACIAAA FROM Producto 

SELECT TOP 9 Nombre_Cliente AS Nuestros_Clientes FROM Farmacia_Cliente

-- GROUP BY -- 

SELECT Nombre_Cliente, Apellido_Cliente from Farmacia_Cliente
GROUP BY Nombre_Cliente;

SELECT Nombre_Cliente
FROM Farmacia_Cliente
WHERE Apellido_Cliente = 'Mendoza' 
GROUP BY Nombre_Cliente
ORDER BY Nombre_Cliente

SELECT Precio
FROM Pedido_Cliente
WHERE Precio > 0
GROUP BY Precio
ORDER BY Precio

SELECT Precio
FROM Pedido_Cliente
WHERE Precio > 40
GROUP BY Precio
ORDER BY Precio

SELECT Stock_Producto
FROM Producto
WHERE Precio_Producto > 0
GROUP BY Stock_Producto
ORDER BY Stock_Producto

SELECT Precio_Producto
FROM Producto
WHERE Precio_Producto > 0
GROUP BY Precio_Producto
ORDER BY Precio_Producto

-- SELECT con having

SELECT Id_Producto from Producto 
group by Id_Producto
having Id_Producto > 111

SELECT Precio_Producto from Producto 
group by Precio_Producto
having Precio_Producto > 100

SELECT Telefono_Trabajador FROM Farmacia_Trabajador
GROUP BY Telefono_Trabajador
HAVING Telefono_Trabajador > 2020

SELECT Precio_Producto from Producto 
group by Precio_Producto
having Precio_Producto > 10.40

SELECT Precio from Pedido_Cliente
GROUP BY Precio 
HAVING Precio > 20.30

