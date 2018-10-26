-- Katya Mariel Mendoza Acosta 1730872 --
USE Farmacia2

CREATE TABLE Historial(
Id_Historial int IDENTITY(1,1) primary key,
Fecha_Cambio date 
)

-- Insertar la fecha de cambio --

CREATE TRIGGER historial_camb
ON Pedido_Cliente
 AFTER INSERT ON Pedido_Cliente
	FOR EACH ROW
 BEGIN
	insert into Historial (Fecha_Cambio) values (getdate())
 END

 -- Evitar la insertacion --

 create trigger Historial_camb2
  on Pedido_Cliente
  instead of insert
  as
    insert into Historial (Fecha_Cambio) values (getdate());

-- FUNCIONES -- 

create function Crear_Producto
 (@nombreProd varchar(20),
  @tipoDeProd varchar(20),
  @DatosExtProd varchar(20)
 )
 returns varchar(60)
 as
 begin 
   declare @resultado varchar(60)
   set @resultado = ( LTRIM(@nombreProd varchar(20)) + LTRIM(@tipoDeProd varchar(20)) + LTRIM(@DatosExtProd varchar(20) )
 )
   return @resultado
 end;

 select dbo.Crear_Producto('Agrifen Tabletas', 'Sustancia Activa','PARACETAMOL + CAFEINA + FENILEGRINA');

 -- PROCEDURES -- 

 CREATE PROCEDURE BuscarCliente @Busqueda VARCHAR(100)
AS
	SELECT 
		*  
	FROM 
		Clientes_Vista
	WHERE
		Clientes_Vista.Apellido_Cliente LIKE '%'+@Busqueda+'%'
;

CREATE PROCEDURE BuscarClientes2 @Busqueda VARCHAR(100)
AS
	SELECT 
		*  
	FROM 
		Nombres_Clientes
	WHERE
		Nombre_Cliente.Apellido_Cliente LIKE '%'+@Busqueda+'%'
;


 SELECT Producto.Nombre_Producto, Pedido_Cliente.Id_Pedido 
 FROM Producto
 INNER JOIN Pedido_Cliente ON Producto.Id_Producto=Producto.Id_Producto




