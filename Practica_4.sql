USE Farmacia2
select * from Farmacia_Cliente

insert into Farmacia_Cliente 
	values (2, 'Paola','Barajas','San Nicolas De G',54321)

insert into Farmacia_Cliente
	values (3,'Daniela', 'Mendoza','Nuevo León Apodaca',123456)

insert into Farmacia_Cliente
	values (4,'Dieguito', 'Mendoza','Granado 1296', 249503)

insert into Farmacia_Cliente
     values (5,'Dieguito', 'Maradona','Nuevo León Apodaca',204947)

insert into Farmacia_Cliente
    values (6,'Lele','Sánchez','San Nicolás de los Garza',304857)

insert into Farmacia_Cliente
    values (7,'Francia','Italia','Escobedo Nuevo León',495847)

insert into farmacia_Cliente
    values (8,'Islandia','EUA','Escobedo Nuevo León',349372)

insert into Farmacia_Cliente
    values (9,'Romano', 'Tomato', 'Italia del Sur',976382)

select * from Farmacia_Sucursal

insert into Farmacia_Sucursal 
values (2,'Escobedo Apodaca',3948566)

insert into Farmacia_Sucursal 
values (3,'Av. Fco.I.Madero',662215250)

insert into Farmacia_Sucursal 
values (4,'Calzada Acoxpa No.240',83029999)

insert into Farmacia_Sucursal 
values (5,'Av.Rio Mayo #301',449975965)

insert into Farmacia_Sucursal 
values (6,'Suc.Ciudad Guzmán',662218256)

insert into Farmacia_Sucursal 
values (7,'Suc.Cerralvo',57860010)

insert into Farmacia_Sucursal 
values (8,'Suc.Cuauhtemoc',62636377)

select * from Tipo_Trabajo

insert into Tipo_Trabajo
	values (2,'Auxiliar de Farmacia')

insert into Tipo_Trabajo
	values (3,'Médico General')

insert into Tipo_Trabajo
	values (4,'Auxiliar de Recursos Humanos')

insert into Tipo_Trabajo
	values (5,'Demovedores de Farmacia')

insert into Tipo_Trabajo
	values (6,'Auxiliar de Farmacia')

insert into Tipo_Trabajo
	values (7,'Jefe de Farmacia')

insert into Tipo_Trabajo
	values (8,'Surtidor')


select * from Farmacia_Trabajador
insert into Farmacia_Trabajador
	values (1,2,'Nikon','Dimos',235799,1)

insert into Farmacia_Trabajador
	values (1,3,'Helen','Jaspe',45669,4)

insert into Farmacia_Trabajador
	values (5,4,'Sandra','Gilant',29485,5)

insert into Farmacia_Trabajador
	values (2,5,'Samantha','Leodore',493759,3)

insert into Farmacia_Trabajador
	values (3,6,'Fiant','Aubermar',38495,8)

insert into Farmacia_Trabajador
	values (8,7,'Paurrot','Sanina',59383,2)

insert into Farmacia_Trabajador
	values (4,8,'Paiva','Kaina',39485,6)


select * from Tipo_Pago
insert into Tipo_Pago
	values (001, 'Pago con tarjeta de crédito')
insert into Tipo_Pago
	values (002, 'Trasferencia Bancaria')
insert into Tipo_Pago
	values (003, 'Cash')
insert into Tipo_Pago
	values (004, 'Ingre. de din. en ef. en la cuenta de un 3ro')
insert into Tipo_Pago
	values (005, 'Envio de dinero en efectivo a un tercero')
insert into Tipo_Pago
	values (006, 'Direct Debit')


select * from Pedido_Cliente

insert into Pedido_Cliente
	values (2,1,3,10.00,'16-10-18',001)
insert into Pedido_Cliente
	values (2,2,5,20.00,'23-10-18',003)
insert into Pedido_Cliente
	values (3,3,6,50.00,'14-10-18',002)
insert into Pedido_Cliente
	values (5,4,6,60.70,'17-10-18',005)
insert into Pedido_Cliente
	values (8,5,6,10.80,'28-10-18',005)

select * from Tipo_Producto

insert into Tipo_Producto
	values (220, 'Antibiotico intra hospitalario')

select * from Proveedor
insert into Proveedor
	values (330,'Medix Sa De Cv', 'Comercializadora', 5500182)
insert into Proveedor
	values (331,'Benavides', 'Autopartes', 5500182)
insert into Proveedor
	values (332,'Farmacia DEMSA', 'Suc.Hidalgo', 5500182)
insert into Proveedor
	values (333,'Productos Médicos', 'GeoMed', 5500182)
insert into Proveedor
	values (334,'El Fenix del Centro', 'Farmacias ', 5500182)
insert into Proveedor
	values (335,'Morenita Mia', 'Farmacias Guadalaj', 5500182)
insert into Proveedor
	values (336,'Juan Jose', 'Martinez Davalos', 5500182)


select * from Producto
insert into Producto 
	values (111,'Abefen R.',100,'15-10-22','1 G1 PVO LIOF CORANGENICOL', 20.45,330,220)
insert into Producto 
	values (112,'Abefen R.',100,'15-10-22','1 G1 PVO LIOF CORANGENICOL', 23.45,332,220)

Update Producto Set Stock_Producto ='200' where Id_Producto = 112
Update Tipo_Pago Set Descripcion = '444' where Id_Pago = 1
Update Tipo_Pago Set Descripcion = 'Clorox' where Id_Pago = 1
Update Farmacia_Trabajador Set Apellido_Trabajador = 'Pérez' where Id_Trabajador = 1
Update Pedido_Cliente Set Precio = '40.23' where Id_Pedido = 1

DELETE FROM Pedido_Cliente WHERE Id_Pedido = 3;