--
create database DB_CAutosla72;
use  DB_CAutosla72;

--Creacion de tabla Automoviles.

CREATE TABLE Automoviles
(
Matricula char (20) primary key,
Modelo	 char  (4) not null,
Marca	char  (40) not null,
Color	char  (20) not null,
Precio  INT  not null
)

--Creacion de tabla Clientes.

CREATE TABLE Clientes
(
Cod_Cliente bigint not null identity,
Identificacion	char (20) primary key,
Nombre char (50) not null
Direccion	char (50) not null
Telefono char (40) not null,
Ciudad  char (40)  not null
)

--Creacion de tabla Revisiones.

CREATE TABLE Revisiones
(
Cod_Revision bigint primary key identity,
Matricula_rev char (20),
Filtro	char (2) not null,
Freno	char (2) not null,
Aceite	char (2) not null,
Otros	char (40) not null,
Fecha	date not null,

--Creacion de LLave foranea revision de cada Auto


CONSTRAINT fk_automoviles FOREIGN KEY (Matricula_rev) references Automoviles (Matricula))



--Creacion de tabla Ventas.

CREATE TABLE Ventas
(
Factura_id bigint primary key identity,
Matricula_Auto_venta char (20),
Identificacion_Cli_venta char (20),

--Creacion de LLaves foraneas Ventas 

CONSTRAINT FK_matricula  FOREIGN key (Matricula_Auto_venta) REFERENCES Automoviles (Matricula);
CONSTRAINT FK_CLIENTES  FOREIGN KEY (Identificacion_Cli_venta) REFERENCES Clientes (Identificacion))






