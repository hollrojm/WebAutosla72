
--Insertar datos en tabla Automoviles
go
insert into Automoviles (Matricula,	Modelo,	Marca,	Color,	Precio)
values 
('koj42d',	'2020'	,'Mazda'	,'Blanco',	30000000),
('ane9050'	,'2018'	,'Renault',	'Blanco'	,23000000),
('opr546'	,'2020',	'Toyota',	'Gris',	34000000),
('kpt5435'	,'2021',	'VolksWagen',	'Azul',	45000000),
('ptq1942'	,'2019',	'Chevrolet',	'Negro',	25000000),
('poil123',	'2019',	'Ferrari',	'Rojo',	120000000 ),
('maz2334',	'2020'	,'Volvo',	'azul',	87999000), 
('kill666',	'2021',	'Maclaren',	'Negro',	110000000),
('ptq4334','2021',	'Bmw',	'Verde'	,98654000),
('oil543',	'2017',	'Cherry',	'Negro',	22000000),
('marc890',	'2019'	,'Ford',	'Gris',	134000000)

select *from Automoviles;

--Insertar datos en tabla Clientes

insert into Clientes (Identificacion,	Nombre,	Direccion,	Telefono,Ciudad)
values 

(1025698079,'Gabriel Monroy','Calle 10 No. 9 - 78  Centro',7273880,	'Bogota'),
(80121042,	'Dayana Garcia','Carrera 56A No. 51 - 81',8723041,'Bogota'),
(53656954,	'Esperanza Gomez','Carrera 22 No. 17-31',6733643,'Medellin'),
(5311227,	'Jorge Mendez',	'Carrera 54 No. 68 - 80 ',8852052,'Cali'),
(23554687,	'Claudia Perez','Calle 59 No. 27 - 35 Barrio Galán',3694114,'Medellin'),
('80234567', 'Annie Rojas','Carrera  5 No. 3 -74  centro',1463824,'Barranquilla'),
('46009789', 'Valeria Rojas','Calle 25 No. 4 - 38 piso 2',6621762,'Cali'),
('45999456', 'Erensto Pizano','Calle 7 No. 5 - 25', 1177970,'Bucaramanga'),
('76980345', 'Teodoro Rusbel','Calle 20 No. 3 - 22',6114617,'Bucaramanga'),
('19234567', 'Camilo Saveedra','Calle 33B  No. 38 - 42',5116060,'Bogota'),
('897657','Hector Ramirez','Calle 12 No. 4 - 19',8241832,'Medellin')


--Insertar datos en tabla Revisiones

select *from Clientes;

insert into Revisiones (Matricula_rev, Filtro,	Freno,	Aceite,	Otros,	Fecha )
values
('koj42d','SI',	'NO',	'SI'	,'Llantas',	'2020-01-23'),
('ptq1942' ,'NO'	,'SI',	'NO',	'Carroceria',	'2019-12-24'),
('opr546','SI',	'NO',	'NO',	'Hidraulico',	'2020-01-25'),
('kpt5435','SI',	'SI',	'SI',	'Luces',	'2020-03-26'),
('ane9050', 'SI',	'NO',	'SI',	'Bomba',	'2020-01-27')

insert into  Revisiones (Matricula_rev, Filtro,	Freno,	Aceite,	Otros,	Fecha)
values

('poil123',	'NO'  ,  'SI',	'NO',	'Electricidad',	'2020-01-28'),
('maz2334',	'NO',	'NO',	'NO',	'Electricidad','2020-01-29'),
('kill666',	'SI',	'SI',	'SI',	'Luces',     '2020-01-30'),
('ptq4334',	'SI',	'NO',	'SI',	'Llantas',	    '2020-01-31'),
('oil543','NO',	'SI',	'NO',	'Llantas',	    '2020-02-01'),
('marc890',	'SI',	'NO',	'NO',	'Llantas',	    '2020-02-02')
insert into  Revisiones (Matricula_rev, Filtro,	Freno,	Aceite,	Otros,	Fecha)
values
('jim123',	'SI'  ,  'SI',	'NO',	'Electricidad',	'2020-01-29')

select *from Revisiones;

--Insertar datos en tabla Ventas

insert into Ventas (Matricula_Auto_venta, Identificacion_Cli_venta)
 values
 ('koj42d',	'1025698079'),
('ptq1942',	'80121042'),
('opr546'	,'53656954'),
('kpt5435',	'5311227'),
('ane9050',	'23554687'),
('poil123',	'80234567'),
('maz2334',	'46009789'),
('kill666',	'45999456'),
('ptq4334',	'76980345'),
('oil543',	'19234567'),
('marc890',	'897657')

 
 select *from Ventas;


-- =============================================
-- Author:		Hollman Rojas
-- Create date: 19/08/2020
-- Description:	Procedieminto almacenado consulta Clientes.
-- =============================================

CREATE PROCEDURE sp_consulta_clientes
AS
BEGIN
Select * from Clientes

END
GO

EXECUTE Consulta_Clientes 8;

-- =============================================
-- Author:		Hollman Rojas
-- Create date: 19/08/2020
-- Description:	Procedieminto almacenado Insertar Clientes.
-- =============================================

CREATE PROCEDURE sp_insertar_cliente
@Identificacion	char (20),
@Nombre char (50),
@Direccion char (50),
@Telefono char (40),
@Ciudad  char (40)
as
begin
insert into  Clientes (Identificacion, Nombre, Direccion, Telefono, Ciudad)
values (@Identificacion, @Nombre, @Direccion,@Telefono,@Ciudad)
End
Go


EXEC Insertar_Datos_Cliente '1111111','JIMMY ALDANA', 'Calle 5 este # 8-77', '3132333222' , 'MEDELLIN'


-- =============================================
-- Author:		Hollman Rojas
-- Create date: 19/08/2020
-- Description:	Procedieminto almacenado Eliminar Clientes.
-- =============================================

CREATE PROCEDURE sp_eliminar_cliente
@Identificacion char (20)
as
begin
Delete FROM Clientes WHERE Identificacion = @Identificacion
end
go

EXEC Borrar_Datos_Cliente2 18; 

-- =============================================
-- Author:		Hollman Rojas
-- Create date: 19/08/2020
-- Description:	Procedieminto almacenado Modifica Cliente.
-- =============================================
CREATE PROCEDURE sp_modificar_cliente
@Identificacion	char (20),
@Nombre char (50),
@Direccion char (50),
@Telefono char (40),
@Ciudad  char (40)
AS
UPDATE Clientes SET [Nombre]= @Nombre , [Direccion]= @Direccion, [Telefono]= @Telefono, [Ciudad]=@Ciudad
WHERE Identificacion= @Identificacion
 GO



-- =============================================
-- Author:		Hollman Rojas
-- Create date: 19/08/2020
-- Description:	Procedieminto almacenado consulta Automoviles.
-- =============================================
CREATE PROCEDURE sp_consultar_automoviles
AS
BEGIN
Select * from Automoviles

END
GO

EXEC sp_consultar_automoviles PPP0

-- =============================================
-- Author:		Hollman Rojas
-- Create date: 19/08/2020
-- Description:	Procedieminto almacenado Insertar automovil.
-- =============================================

CREATE PROCEDURE sp_Insertar_Automoviles
@Matricula char (20),
@Modelo	 char  (4), 
@Marca	char  (40), 
@Color	char  (20), 
@Precio  INT
AS
BEGIN
 Insert into Automoviles(Matricula ,Modelo,Marca,Color,Precio)
 Values (@Matricula, @Modelo, @Marca, @Color, @Precio)
 END
 GO

 EXECUTE Insertar_Automoviles2 'POC123','1998','Mazda','Gris',5000000;

-- =============================================
-- Author:		Hollman Rojas
-- Create date: 19/08/2020
-- Description:	Procedieminto almacenado Elimina dato automovil.
-- =============================================
 
CREATE PROCEDURE sp_eliminar_Datos_Automoviles
@Matricula char (20)
as
begin
Delete FROM Automoviles WHERE Matricula = @Matricula
end
go

EXEC Borrar_Datos_Autos 'POCO345'
select *from Ventas;
-- =============================================
-- Author:		Hollman Rojas
-- Create date: 19/08/2020
-- Description:	Procedieminto almacenado Modifica dato automovil.
-- =============================================
CREATE PROCEDURE sp_modificar_automovil
@Matricula char (20),
@Modelo	 char  (4), 
@Marca	char  (40), 
@Color	char  (20), 
@Precio  INT
AS
UPDATE Automoviles SET [Modelo]= @Modelo, [Marca]= @Marca,[Color]= @Color, [Precio]=@Precio
WHERE Matricula= @Matricula
 GO


-- =============================================
-- Author:		Hollman Rojas
-- Create date: 19/08/2020
-- Description:	Procedieminto almacenado consulta Revisiones.
-- =============================================

CREATE PROCEDURE sp_consultar_revisiones
AS
BEGIN
Select * from Revisiones
END
GO

EXEC sp_consultar_revisiones  koj42d

-- =============================================
-- Author:		Hollman Rojas
-- Create date: 19/08/2020
-- Description:	Procedieminto almacenado consulta Revisiones por fecha.
-- =============================================

CREATE PROCEDURE sp_consulta_Fecharev
@Fecha date
AS
BEGIN
Select Matricula_rev, Filtro, Freno, Aceite,Otros, Fecha
From Revisiones
where Fecha = @Fecha
END
GO

EXEC Consulta_Fecharev '2020-01-29'

-- =============================================
-- Author:		Hollman Rojas
-- Create date: 19/08/2020
-- Description:	Procedieminto almacenado insertar Revisiones.
-- =============================================

CREATE PROCEDURE sp_insertar_revisiones
@Matricula_rev char (20),
@Filtro	char (2) ,
@Freno	char (2) ,
@Aceite	char (2) ,
@Otros	char (40) ,
@Fecha	date
AS
BEGIN
 insert into  Revisiones (Matricula_rev, Filtro,	Freno,	Aceite,	Otros,	Fecha)
 values ( @Matricula_rev, @Filtro, @Freno,@Aceite, @Otros,@Fecha	);
 END
 GO

 EXEC IRevi 'horn900',	'SI'  , 'SI',	'NO',	'Electricidad',	'2019-01-29'


-- =============================================
-- Author:		Hollman Rojas
-- Create date: 19/08/2020
-- Description:	Procedieminto almacenado eliminar Revision.
-- =============================================

CREATE PROCEDURE sp_eliminar_revision
@Cod_Revision bigint
as
begin
Delete FROM Revisiones WHERE Cod_Revision  = @Cod_Revision 
END
GO

EXEC Borrar_Revision 18

-- =============================================
-- Author:		Hollman Rojas
-- Create date: 19/08/2020
-- Description:	Procedieminto almacenado Modificar Revision.
-- =============================================

CREATE PROCEDURE sp_modificar_revision
@Cod_Revision bigint,
@Matricula_rev char (20),
@Filtro	char (2) ,
@Freno	char (2) ,
@Aceite	char (2) ,
@Otros	char (40) ,
@Fecha	date
AS
UPDATE Revisiones SET [Matricula_rev] =@Matricula_rev,[Filtro]= @Filtro,[Freno]= @Freno, [Aceite]=@Aceite, [Otros]=@Otros, [Fecha]=@Fecha
WHERE Cod_Revision = @Cod_Revision
 GO

-- =============================================
-- Author:		Hollman Rojas
-- Create date: 19/08/2020
-- Description:	Procedieminto almacenado Consulta Venta.
-- =============================================

CREATE PROCEDURE sp_consulta_ventas
AS
BEGIN
Select * from Ventas
END
GO


EXEC Consulta_Venta 80121042


-- =============================================
-- Author:		Hollman Rojas
-- Create date: 19/08/2020
-- Description:	Procedieminto almacenado Ingresar Venta.
-- =============================================

CREATE PROCEDURE sp_ingresar_venta
@Matricula_Auto_venta char (20),
@Identificacion_Cli_venta char (20)
AS
BEGIN
 insert into  Ventas (Matricula_Auto_venta, Identificacion_Cli_venta)
 values (@Matricula_Auto_venta , @Identificacion_Cli_venta )
 END
 GO

 EXEC Ingresar_Venta 'horn900',	'80121042'


-- =============================================
-- Author:		Hollman Rojas
-- Create date: 19/08/2020
-- Description:	Procedieminto almacenado Eliminar Venta.
-- =============================================

CREATE PROCEDURE sp_eliminar_Venta
@Matricula_Auto_venta char (20)
as
begin
Delete FROM Ventas WHERE Matricula_Auto_venta = @Matricula_Auto_venta 
END
GO


EXEC Eliminar_Venta 'horn900'

-- =============================================
-- Author:		Hollman Rojas
-- Create date: 19/08/2020
-- Description:	Procedieminto almacenado Modificar Venta.
-- =============================================

CREATE PROCEDURE sp_modificar_venta
@Factura_id bigint,
@Matricula_Auto_venta char (20),
@Identificacion_Cli_venta char (20)
AS
UPDATE Ventas SET [Matricula_Auto_venta] =@Matricula_Auto_venta,[Identificacion_Cli_venta]= @Identificacion_Cli_venta
WHERE Factura_id = @Factura_id
 GO




