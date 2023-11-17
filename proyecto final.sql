/*Proyecto final sql*/

create database empresa;
use empresa;

create table clientes(
	DNI VARCHAR(11) NOT NULL,
	NOMBRE VARCHAR(100) NOT NULL,
	DIRECCION VARCHAR(50),
	BARRIO varchar(50),
	CIUDAD VARCHAR(50),
	ESTADO VARCHAR(10),
	CP VARCHAR(10),
	FECHA_NACIMIENTO DATE,
	EDAD SMALLINT,
	SEXO VARCHAR(1),
	LIMITE_CREDITO FLOAT,
	VOLUMEN_COMPRA FLOAT,
	PRIMERA_COMPRA BIT,
	primary key(DNI));

SELECT * FROM clientes;

/*Tabla vendedores creada por asistente*/
CREATE TABLE `empresa`.`vendedores` (
  `MATRICULA` VARCHAR(5) NOT NULL,
  `NOMBRE` VARCHAR(100) NULL,
  `BARRIO` VARCHAR(45) NULL,
  `COMISION` FLOAT NULL,
  `FECHA_ADMISION` DATE NULL,
  `VACACIONES` BIT(1) NULL,
  PRIMARY KEY (`MATRICULA`))
ENGINE = InnoDB;

create table productos(
	CODIGO VARCHAR(10) NOT NULL,
	DESCRIPCION VARCHAR(100),
	SABOR VARCHAR(50),
	TAMANO VARCHAR(50),
	ENVASE VARCHAR(50),
	PRECIO FLOAT,
	PRIMARY KEY(CODIGO));
    
create table facturas(
	NUMERO VARCHAR(5) NOT NULL,
    FECHA DATE,
    DNI VARCHAR(11) NOT NULL,
    MATRICULA VARCHAR(5)NOT NULL,
    IMPUESTO FLOAT,
    PRIMARY KEY (NUMERO),
    FOREIGN KEY (DNI) REFERENCES clientes(DNI),
    FOREIGN KEY (MATRICULA) REFERENCES vendedores(MATRICULA)
    );

create table items(
	NUMERO VARCHAR(5) NOT NULL,
    CODIGO VARCHAR(10) NOT NULL,
    CANTIDAD INT,
    PRECIO FLOAT,
    PRIMARY KEY (NUMERO, CODIGO),
    FOREIGN KEY (NUMERO) REFERENCES facturas(NUMERO),
    FOREIGN KEY (CODIGO) REFERENCES productos(CODIGO)
    );
    
/*cargando datos*/
    
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('9283760794', 'Edson Calisaya', 'Sta Úrsula Xitla', 'Barrio del Niño Jesús', 'Ciudad de México', 'EM', '22002002', '1995-01-07', 25, 'M', 150000, 250000, 1);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('7771579779', 'Marcelo Perez', 'F.C. de Cuernavaca 13', 'Carola', 'Ciudad de México', 'EM', '88202912', '1992-01-25', 29, 'M', 120000, 200000, 1);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('5576228758', 'Patricia Olivera', 'Pachuca 75', 'Condesa', 'Ciudad de México', 'EM', '88192029', '1995-01-14', 25, 'F', 70000, 160000, 1);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('8502682733', 'Luis Silva', 'Prol. 16 de Septiembre 1156', 'Contadero', 'Ciudad de México', 'EM', '82122020', '1995-01-07', 25, 'M', 110000, 190000, 0);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('1471156710', 'Erica Carvajo', 'Heriberto Frías 1107', 'Del Valle', 'Ciudad de México', 'EM', '80012212', '1990-01-01', 30, 'F', 170000, 245000, 0);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('2600586709', 'Raúl Meneses', 'Estudiantes 89', 'Centro', 'Ciudad de México', 'EM', '22002012', '1999-08-13', 21, 'M', 120000, 210000, 1);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('3623344710', 'Marcos Rosas', 'Av. Universidad', 'Del Valle', 'Ciudad de México', 'EM', '22002012', '1995-01-13', 26, 'M', 110000, 220000, 1);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('50534475787', 'Abel Pintos', 'Carr. México-Toluca 1499', 'Cuajimalpa', 'Ciudad de México', 'EM', '22000212', '1995-01-11', 25, 'M', 170000, 260000, 0);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('5840119709', 'Gabriel Roca', 'Eje Central Lázaro Cárdenas 911', 'Del Valle', 'Ciudad de México', 'EM', '80010221', '1985-01-16', 36, 'M', 140000, 210000, 1);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('8719655770', 'Carlos Santivañez', 'Calz. del Hueso 363', 'Floresta Coyoacán', 'Ciudad de México', 'EM', '81192002', '1983-01-20', 37, 'M', 200000, 240000, 0);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('19290992743', 'Rodrigo Villa', 'Libertadores 65', 'Héroes', 'Ciudad de México', 'EM', '21002020', '1998-05-30', 22, 'M', 120000, 220000, 0);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('5648641702', 'Paolo Mendez', 'Martires de Tacubaya 65', 'Héroes de Padierna', 'Ciudad de México', 'EM', '21002020', '1991-01-30', 29, 'M', 120000, 220000, 0);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('492472718', 'Jorge Castro', 'Federal México-Toluca 5690', 'Locaxco', 'Ciudad de México', 'EM', '22012002', '1994-01-19', 26, 'M', 75000, 95000, 1);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('9275760794', 'Alberto Rodriguez', 'Circunvalación Oblatos 690', 'Oblatos', 'Guadalajara', 'JC', '44700000', '1991-12-28', 26, 'M', 75000, 95000, 1);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('94387575700', 'María Jimenez', 'Av. Libertadores 457', 'Barragán Hernández', 'Guadalajara', 'JC', '44469000', '1995-05-13', 26, 'F', 120000, 300000, 1);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('95939180787', 'Ximena Gómez', 'Jaguares 822', 'Alcalde Barranquitas', 'Guadalajara', 'JC',	'44270000', '1992-01-05', 16, 'F', 90000, 18000, 0);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('773912', 'Clean', '1 Litro', 'Naranja', 'Botella PET', 8.01);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('838819', 'Clean', '1,5 Litros', 'Naranja', 'Botella PET', 12.01);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('1037797', 'Clean', '2 Litros', 'Naranja', 'Botella PET', 16.01);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('812829', 'Clean', '350 ml', 'Naranja', 'Lata', 2.81);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('479745', 'Clean', '470 ml', 'Naranja', 'Botella de Vidrio', 3.77);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('695594', 'Festival de Sabores', '1,5 Litros', 'Asaí', 'Botella PET', 28.51);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('243083', 'Festival de Sabores', '1,5 Litros', 'Maracuyá', 'Botella PET', 10.51);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('1022450', 'Festival de Sabores', '2 Litros', 'Asái', 'Botella PET', 38.01);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('231776', 'Festival de Sabores', '700 ml', 'Asaí', 'Botella de Vidrio', 13.31);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('723457', 'Festival de Sabores', '700 ml', 'Maracuyá', 'Botella de Vidrio', 4.91);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('746596', 'Light', '1,5 Litros', 'Sandía', 'Botella PET', 19.51);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('1040107', 'Light', '350 ml', 'Sandía', 'Lata', 4.56);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('1002334', 'Línea Citrus', '1 Litro', 'Lima/Limón', 'Botella PET', 7);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('1088126', 'Línea Citrus', '1 Litro', 'Limón', 'Botella PET', 7);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('1041119', 'Línea Citrus', '700 ml', 'Lima/Limón', 'Botella de Vidrio', 4.9);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('1042712', 'Línea Citrus', '700 ml', 'Limón', 'Botella de Vidrio', 4.9);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('520380', 'Pedazos de Frutas', '1 Litro', 'Manzana', 'Botella PET', 12.01);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('788975', 'Pedazos de Frutas', '1,5 Litros', 'Manzana', 'Botella PET', 18.01);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('229900', 'Pedazos de Frutas', '350 ml', 'Manzana', 'Lata', 4.21);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('1101035', 'Refrescante', '1 Litro', 'Frutilla/Limón', 'Botella PET', 9.01);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('1086543', 'Refrescante', '1 Litro', 'Mango', 'Botella PET', 11.01);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('326779', 'Refrescante', '1,5 Litros', 'Mango', 'Botella PET', 16.51);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('826490', 'Refrescante', '700 ml', 'Frutilla/Limón', 'Botella de Vidrio', 6.31);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('1096818', 'Refrescante', '700 ml', 'Mango', 'Botella de Vidrio', 7.71);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('394479', 'Sabor da Montaña', '700 ml', 'Cereza', 'Botella de Vidrio', 8.41);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('783663', 'Sabor da Montaña', '700 ml', 'Frutilla', 'Botella de Vidrio', 7.71);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('1000889', 'Sabor da Montaña', '700 ml', 'Uva', 'Botella de Vidrio', 6.31);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('544931', 'Verano', '350 ml', 'Limón', 'Lata', 2.46);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('235653', 'Verano', '350 ml', 'Mango', 'Lata', 3.86);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('1051518', 'Verano', '470 ml', 'Limón', 'Botella de Vidrio', 3.3);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('1078680', 'Verano', '470 ml', 'Mango', 'Botella de Vidrio', 5.18);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('1004327', 'Vida del Campo', '1,5 Litros', 'Sandía', 'Botella PET', 19.51);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('1013793', 'Vida del Campo', '2 Litros', 'Cereza/Manzana', 'Botella PET', 24.01);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('290478', 'Vida del Campo', '350 ml', 'Sandía', 'Lata', 4.56);
INSERT INTO PRODUCTOS (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) VALUES ('1002767', 'Vida del Campo', '700 ml', 'Cereza/Manzana', 'Botella de Vidrio', 8.41);
INSERT VENDEDORES (MATRICULA, NOMBRE, COMISION, FECHA_ADMISION, VACACIONES, BARRIO) VALUES ('00235','Miguel Pavón Silva',0.08,'2014-08-15', 0,'Condesa');
INSERT VENDEDORES (MATRICULA, NOMBRE, COMISION, FECHA_ADMISION, VACACIONES, BARRIO) VALUES ('00236', 'Claudia Morales',0.08,'2013-09-17', 1,'Del Valle');
INSERT VENDEDORES (MATRICULA, NOMBRE, COMISION, FECHA_ADMISION, VACACIONES, BARRIO) VALUES ('00237', 'Concepción Martinez',0.11,'2017-03-18', 1,'Contadero');
INSERT VENDEDORES (MATRICULA, NOMBRE, COMISION, FECHA_ADMISION, VACACIONES, BARRIO) VALUES ('00238', 'Patricia Sánchez',0.11,'2016-08-21', 0,'Oblatos');

SELECT * FROM CLIENTES;
SELECT * FROM PRODUCTOS;
SELECT * FROM VENDEDORES;

/*insertando registros desde otra base de datos*/

INSERT INTO FACTURAS SELECT NUMERO, FECHA_VENTA AS FECHA, DNI, MATRICULA, IMPUESTO FROM jugos_ventas.facturas;

INSERT INTO ITEMS SELECT NUMERO, CODIGO_DEL_PRODUCTO AS CODIGO, CANTIDAD, PRECIO FROM jugos_ventas.items_facturas;

SELECT * FROM FACTURAS A INNER JOIN ITEMS B ON A.NUMERO = B.NUMERO;


/*funcion rand() */

Select rand() as numero_randon_del_0_al_1;

/*min = 20 y max =250
(rand() * (max-min+1))+min*/

/*creando funcion que devuelve un numero aleatorio*/

DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `f_aleatorio`(min int, max int) RETURNS int
BEGIN
declare vresultado int;

Select floor((rand()*(max - min + 1))+ min) into vresultado;
RETURN vresultado;
END$$

DELIMITER ;

select f_aleatorio(1,10);

/*Creando funcion cliente aleatorio*/


DELIMITER $$

CREATE DEFINER=`root`@`localhost` FUNCTION `f_cliente_aleatorio`() RETURNS varchar(11) CHARSET utf8mb4
BEGIN
declare vresultado varchar(11);
declare vmax int;
declare valeatorio int;

select count(*) into vmax from CLIENTES;

set valeatorio  = f_aleatorio(1, vmax);

set valeatorio = valeatorio -1;

select DNI into vresultado from CLIENTES limit valeatorio , 1;
RETURN vresultado;
END$$

DELIMITER ;

select f_cliente_aleatorio();

/* En este ejercicio, crea otra función para obtener el 
producto y también el vendedor usando como base la función aleatorio.*/

select * from PRODUCTOS;
select * from VENDEDORES;

/*Creando funcion para obtener producto aleatorio*/

DELIMITER $$
USE `empresa`$$
CREATE FUNCTION `f_producto_aleatorio` ()
RETURNS varchar(10)
BEGIN
declare vmax int;
declare valeatorio int;
declare vresultado varchar(10);

select count(*) into vmax from PRODUCTOS;
set valeatorio = f_aleatorio(1, vmax);
set valeatorio = valeatorio - 1;

select CODIGO into vresultado from PRODUCTOS limit valeatorio,1;

RETURN vresultado;
END$$

DELIMITER ;

select f_producto_aleatorio();

/*Creando funcion para obtener vendedor aleatorio*/

DELIMITER $$
USE `empresa`$$
CREATE FUNCTION `f_vendedor_aleatorio` ()
RETURNS varchar(5)
BEGIN
declare vmax int;
declare vresultado varchar(5);
declare valeatorio int;

select count(*) into vmax from VENDEDORES;
set valeatorio = f_aleatorio(1,vmax);
set valeatorio = valeatorio - 1;

select MATRICULA into vresultado from VENDEDORES limit valeatorio,1;

RETURN vresultado;
END$$

DELIMITER ;

select f_vendedor_aleatorio();

/*Prueba funciones*/

select f_cliente_aleatorio() as cliente, f_producto_aleatorio() as producto, f_vendedor_aleatorio() as vendedor;

/*Arreglando problema clave primaria en la tabla facturas y items*/

	/*Eliminamos las tablas*/
drop table ITEMS;
drop table FACTURAS;


	/*Creamos la tabla cambiando el tipo de dato de numero a int*/
create table FACTURAS(
	NUMERO int NOT NULL,
    FECHA DATE,
    DNI VARCHAR(11) NOT NULL,
    MATRICULA VARCHAR(5)NOT NULL,
    IMPUESTO FLOAT,
    PRIMARY KEY (NUMERO),
    FOREIGN KEY (DNI) REFERENCES CLIENTES(DNI),
    FOREIGN KEY (MATRICULA) REFERENCES VENDEDORES(MATRICULA)
    );

create table ITEMS(
	NUMERO int NOT NULL,
    CODIGO VARCHAR(10) NOT NULL,
    CANTIDAD INT,
    PRECIO FLOAT,
    PRIMARY KEY (NUMERO, CODIGO),
    FOREIGN KEY (NUMERO) REFERENCES FACTURAS(NUMERO),
    FOREIGN KEY (CODIGO) REFERENCES PRODUCTOS(CODIGO)
    );
    
    /*Volvemos a importar desde la otra base de datos*/
INSERT INTO FACTURAS SELECT NUMERO, FECHA_VENTA AS FECHA, DNI, MATRICULA, IMPUESTO FROM jugos_ventas.facturas;

INSERT INTO ITEMS SELECT NUMERO, CODIGO_DEL_PRODUCTO AS CODIGO, CANTIDAD, PRECIO FROM jugos_ventas.items_facturas;

/*Creando storage procedure para generar facturas automaticamente*/

DELIMITER $$
USE `empresa`$$
CREATE PROCEDURE `sp_venta` (fecha date, maxitems int, maxcantidad int)
BEGIN
declare vcliente varchar(11);
declare vproducto varchar(10);
declare vvendedor varchar(5);
declare vcantidad int;
declare vprecio float;
declare vitems int;
declare vnfactura int;
declare vcontador int default 1; 

select max(numero) +1 into vnfactura from FACTURAS;
set vcliente = f_cliente_aleatorio();
set vvendedor = f_vendedor_aleatorio();

insert into FACTURAS (NUMERO, FECHA, DNI, MATRICULA, IMPUESTO) values (vnfactura, fecha, vcliente, vvendedor, 0.16);

set vitems = f_aleatorio(1, maxitems);

while vcontador <= vitems
do

Set vproducto = f_producto_aleatorio();
set vcantidad = f_aleatorio(1, maxcantidad);
select PRECIO into vprecio from PRODUCTOS where CODIGO = vproducto;

insert into ITEMS(NUMERO,CODIGO,CANTIDAD,PRECIO) values (vnfactura, vproducto, vcantidad, vprecio);

set vcontador = vcontador + 1;

end while;

END$$

DELIMITER ;
select max(NUMERO) from FACTURAS;
call sp_venta('20210619', 3, 100);

/*Testeando sp_venta*/

	/*cADA VEZ QUE SE EJECUTE ESTE COMANDO EL SELECT DE ABAJO AUMENTA LA FACTURACION*/
call sp_venta('20210619', 3, 100);

select A.FECHA, SUM(B.CANTIDAD * B.PRECIO) AS FACTURACION 
FROM FACTURAS A 
inner join ITEMS B 
ON A.NUMERO = B.NUMERO
WHERE A.FECHA = '20210619'
group by A.FECHA;

/*Arreglando problema de claves duplicadas del sp_ventas*/

DROP procedure IF EXISTS `empresa`.`sp_venta`;
;

DELIMITER $$
USE `empresa`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_venta`(fecha date, maxitems int, maxcantidad int)
BEGIN
declare vcliente varchar(11);
declare vproducto varchar(10);
declare vvendedor varchar(5);
declare vcantidad int;
declare vprecio float;
declare vitems int;
declare vnfactura int;
declare vcontador int default 1; 
declare vnumitems int;

select max(numero) +1 into vnfactura from FACTURAS;
set vcliente = f_cliente_aleatorio();
set vvendedor = f_vendedor_aleatorio();

insert into FACTURAS (NUMERO, FECHA, DNI, MATRICULA, IMPUESTO) values (vnfactura, fecha, vcliente, vvendedor, 0.16);

set vitems = f_aleatorio(1, maxitems);

while vcontador <= vitems
do

Set vproducto = f_producto_aleatorio();
select count(*) into vnumitems from ITEMS where CODIGO = vproducto and NUMERO = vnfactura;
If vnumitems = 0 then
	set vcantidad = f_aleatorio(1, maxcantidad);
	select PRECIO into vprecio from PRODUCTOS where CODIGO = vproducto;
	insert into ITEMS(NUMERO,CODIGO,CANTIDAD,PRECIO) values (vnfactura, vproducto, vcantidad, vprecio);
end if;
set vcontador = vcontador + 1;

end while;

END$$

DELIMITER ;
;

/*Test*/
call sp_venta('20210619', 20, 100);

/*En la tabla de facturas tenemos el valor del impuesto. 
En la tabla de ítems tenemos la cantidad y la facturación. 
Calcula el valor del impuesto pago en el año de 2021 redondeando al mayor entero.*/

select * from FACTURAS;
Select * from ITEMS;

Select YEAR(FECHA), CEIL(sum((B.CANTIDAD * B.PRECIO) * A.IMPUESTO)) as Impuestos from FACTURAS A
inner join ITEMS B 
on A.NUMERO = B.NUMERO
Where year(A.FECHA) = '2021';

/*Usando Triggers*/

	/*Creando tabla facturacion*/
CREATE TABLE FACTURACION(
FECHA DATE NULL,
VENTA_TOTAL FLOAT
);
	/*Creando triggers sin stored procedure*/
DELIMITER //
CREATE TRIGGER TG_FACTURACION_INSERT 
AFTER INSERT ON ITEMS
FOR EACH ROW BEGIN
  DELETE FROM FACTURACION;
  INSERT INTO FACTURACION
  SELECT A.FECHA, SUM(B.CANTIDAD * B.PRECIO) AS VENTA_TOTAL
  FROM FACTURAS A
  INNER JOIN
  ITEMS B
  ON A.NUMERO = B.NUMERO
  GROUP BY A.FECHA;
END //

DELIMITER //
CREATE TRIGGER TG_FACTURACION_DELETE
AFTER DELETE ON ITEMS
FOR EACH ROW BEGIN
  DELETE FROM FACTURACION;
  INSERT INTO FACTURACION
  SELECT A.FECHA, SUM(B.CANTIDAD * B.PRECIO) AS VENTA_TOTAL
  FROM FACTURAS A
  INNER JOIN
  ITEMS B
  ON A.NUMERO = B.NUMERO
  GROUP BY A.FECHA;
END //

DELIMITER //
CREATE TRIGGER TG_FACTURACION_UPDATE
AFTER UPDATE ON ITEMS
FOR EACH ROW BEGIN
  DELETE FROM FACTURACION;
  INSERT INTO FACTURACION
  SELECT A.FECHA, SUM(B.CANTIDAD * B.PRECIO) AS VENTA_TOTAL
  FROM FACTURAS A
  INNER JOIN
  ITEMS B
  ON A.NUMERO = B.NUMERO
  GROUP BY A.FECHA;
END //

	/*Test de los triggers*/
    
select * from FACTURACION;

call sp_venta('20210622',15,100);

/*Creando triggers con stored procedure (forma mas sostenible)*/

	/*Creamos el stored procedure*/
DELIMITER $$
USE `empresa`$$
CREATE PROCEDURE `sp_triggers` ()
BEGIN
  DELETE FROM FACTURACION;
  INSERT INTO FACTURACION
  SELECT A.FECHA, SUM(B.CANTIDAD * B.PRECIO) AS VENTA_TOTAL
  FROM FACTURAS A
  INNER JOIN
  ITEMS B
  ON A.NUMERO = B.NUMERO
  GROUP BY A.FECHA;
END$$

DELIMITER ;

	/*Borramos los triggers*/
    
drop trigger TG_FACTURACION_INSERT;
drop trigger TG_FACTURACION_UPDATE;
drop trigger TG_FACTURACION_DELETE;

	/*Los creamos con el stored procedure*/

DELIMITER //
CREATE TRIGGER TG_FACTURACION_INSERT 
AFTER INSERT ON ITEMS
FOR EACH ROW BEGIN
	call sp_triggers();
END //

DELIMITER //
CREATE TRIGGER TG_FACTURACION_DELETE
AFTER DELETE ON ITEMS
FOR EACH ROW BEGIN
	call sp_triggers();
END //

DELIMITER //
CREATE TRIGGER TG_FACTURACION_UPDATE
AFTER UPDATE ON ITEMS
FOR EACH ROW BEGIN
  call sp_triggers();
END //

/*Test de los triggers*/
    
select * from FACTURACION where FECHA = '20210622';

call sp_venta('20210622',15,100);