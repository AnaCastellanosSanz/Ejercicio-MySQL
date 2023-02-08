create table Camioneros(
    Dni varchar(20) primary key not null, 
    Nombre varchar(50) not null, 
    Teléfono int(10) not null, 
    Dirección varchar(255), 
    Salario float(10,2) unsigned, 
    Población varchar(255) default 0
);

create table Provincias(
    CodProvincia int(10) unsigned not null primary key, 
    Nombre varchar(50) not null
);

create table Camiones(
    Matrícula varchar(20) primary key not null, 
    Modelo varchar(255) not null, 
    Potencia varchar(10) not null, 
    Tipo varchar(255) not null
);

create table Paquetes(
    CodPaquete int(20) unsigned not null primary key, 
    Dirección varchar(255), 
    Destinatario varchar(255) not null, 
    Descripción varchar(255), 
    CodProvincia int unsigned not null, 
    CodCamionero varchar(20) not null, 
    foreign key(CodProvincia) references Provincias(CodProvincia), 
    foreign key(CodCamionero) references Camioneros(Dni)
);


create table Conducir(
    Fichaje int(20) unsigned not null primary key, 
    Fecha datetime DEFAULT CURRENT_TIMESTAMP,
    CodCamionero varchar(20) not null, 
    CodCamión varchar(20) not null, 
    foreign key(CodCamionero) references Camioneros(Dni),
    foreign key(CodCamión) references Camiones(Matrícula)
);






~ CAMIONEROS ~

INSERT INTO Camioneros (Dni, Nombre, Teléfono, Dirección, Salario, Población)
VALUES ('465651554A', 'Pedro García', 625789614, 'Calle A', 1000.00, 'Madrid');

INSERT INTO Camioneros (Dni, Nombre, Teléfono, Dirección, Salario, Población)
VALUES ('512674896B', 'Juan Rodriguez', 61234857, 'Calle B', 1500.00, 'Barcelona');

INSERT INTO Camioneros (Dni, Nombre, Teléfono, Dirección, Salario, Población)
VALUES ('125478635C', 'María Fernández', 648753156, 'Calle C', 2000.00, 'Valencia');

INSERT INTO Camioneros (Dni, Nombre, Teléfono, Dirección, Salario, Población)
VALUES ('125348795D', 'Antonio López', 612457863, 'Calle D', 2500.00, 'Sevilla');

INSERT INTO Camioneros (Dni, Nombre, Teléfono, Dirección, Salario, Población)
VALUES ('218674536E', 'Luisa Díaz', 632457823, 'Calle E', 3000.00, 'Bilbao');

INSERT INTO Camioneros (Dni, Nombre, Teléfono, Dirección, Salario, Población)
VALUES ('52016412F', 'Carlos Sanz', 647896325, 'Calle F', 1500.00, 'Madrid');

INSERT INTO Camioneros (Dni, Nombre, Teléfono, Dirección, Salario, Población)
VALUES ('23458796P', 'Silvia Castro', 687453221, 'Calle G', 1230.00, 'Segovia');

INSERT INTO Camioneros (Dni, Nombre, Teléfono, Dirección, Salario, Población)
VALUES ('12547836W', 'Belen Sánchez', 666654782, 'Calle H', 3300.00, 'Barcelona');

INSERT INTO Camioneros (Dni, Nombre, Teléfono, Dirección, Salario, Población)
VALUES ('856795223X', 'Miguel Méndez', 612004700, 'Calle I', 25000.00, 'Sevilla');


Modificar el Teléfono de Juan Rodriguez
UPDATE Camioneros
SET Teléfono = 674593126
WHERE Dni = '512674896B';



mysql> select * from camioneros;
+------------+-------------------+-----------+------------+----------+------------+
| Dni        | Nombre            | Teléfono  | Dirección  | Salario  | Población  |
+------------+-------------------+-----------+------------+----------+------------+
| 125348795D | Antonio López     | 612457863 | Calle D    |  2500.00 | Sevilla    |
| 12547836W  | Belen Sánchez     | 666654782 | Calle H    |  3300.00 | Barcelona  |
| 125478635C | María Fernández   | 648753156 | Calle C    |  2000.00 | Valencia   |
| 218674536E | Luisa Díaz        | 632457823 | Calle E    |  3000.00 | Bilbao     |
| 23458796P  | Silvia Castro     | 687453221 | Calle G    |  1230.00 | Segovia    |
| 465651554A | Pedro García      | 625789614 | Calle A    |  1000.00 | Madrid     |
| 512674896B | Juan Rodriguez    | 674593126 | Calle B    |  1500.00 | Barcelona  |
| 52016412F  | Carlos Sanz       | 647896325 | Calle F    |  1500.00 | Madrid     |
| 856795223X | Miguel Méndez     | 612004700 | Calle I    | 25000.00 | Sevilla    |
+------------+-------------------+-----------+------------+----------+------------+





~ PROVINCIAS ~

INSERT INTO Provincias (CodProvincia, Nombre) VALUES (1, 'Madrid');
INSERT INTO Provincias (CodProvincia, Nombre) VALUES (2, 'Barcelona');
INSERT INTO Provincias (CodProvincia, Nombre) VALUES (3, 'Valencia');
INSERT INTO Provincias (CodProvincia, Nombre) VALUES (4, 'Sevilla');
INSERT INTO Provincias (CodProvincia, Nombre) VALUES (5, 'Zaragoza');ç

INSERT INTO Provincias (CodProvincia, Nombre) VALUES (6, 'Madrid');
INSERT INTO Provincias (CodProvincia, Nombre) VALUES (7, 'Segovia');
INSERT INTO Provincias (CodProvincia, Nombre) VALUES (8, 'Barcelona');
INSERT INTO Provincias (CodProvincia, Nombre) VALUES (9, 'Salamanca');

mysql> select * from provincias;
+--------------+-----------+
| CodProvincia | Nombre    |
+--------------+-----------+
|            1 | Madrid    |
|            2 | Barcelona |
|            3 | Valencia  |
|            4 | Sevilla   |
|            5 | Zaragoza  |
|            6 | Madrid    |
|            7 | Segovia   |
|            8 | Barcelona |
|            9 | Salamanca |
+--------------+-----------+





~ CAMIONES ~

INSERT INTO Camiones (Matrícula, Modelo, Potencia, Tipo) VALUES ('1235A', 'Volvo FH16', '500 HP', 'Camión de remolque');
INSERT INTO Camiones (Matrícula, Modelo, Potencia, Tipo) VALUES ('2489B', 'Mercedes-Benz Actros', '400 HP', 'Camión de remolque');
INSERT INTO Camiones (Matrícula, Modelo, Potencia, Tipo) VALUES ('8080C', 'Scania R', '450 HP', 'Camión de caja');
INSERT INTO Camiones (Matrícula, Modelo, Potencia, Tipo) VALUES ('3322D', 'Daf XF', '430 HP', 'Camión de remolque');
INSERT INTO Camiones (Matrícula, Modelo, Potencia, Tipo) VALUES ('1114E', 'Iveco Stralis', '500 HP', 'Camión de caja');


INSERT INTO Camiones (Matrícula, Modelo, Potencia, Tipo) VALUES ('G510B', 'Mercedes-Benz Actros', '400 HP', 'Camión de remolque');
INSERT INTO Camiones (Matrícula, Modelo, Potencia, Tipo) VALUES ('X456C', 'Scania R', '450 HP', 'Camión de caja');
INSERT INTO Camiones (Matrícula, Modelo, Potencia, Tipo) VALUES ('1028D', 'Daf XF', '430 HP', 'Camión de remolque');
INSERT INTO Camiones (Matrícula, Modelo, Potencia, Tipo) VALUES ('G564E', 'Iveco Stralis', '500 HP', 'Camión de caja');

mysql> select * from camiones;
+------------+----------------------+----------+---------------------+
| Matrícula  | Modelo               | Potencia | Tipo                |
+------------+----------------------+----------+---------------------+
| 1028D      | Daf XF               | 430 HP   | Camión de remolque  |
| 1114E      | Iveco Stralis        | 500 HP   | Camión de caja      |
| 1235A      | Volvo FH16           | 500 HP   | Camión de remolque  |
| 2489B      | Mercedes-Benz Actros | 400 HP   | Camión de remolque  |
| 3322D      | Daf XF               | 430 HP   | Camión de remolque  |
| 8080C      | Scania R             | 450 HP   | Camión de caja      |
| G510B      | Mercedes-Benz Actros | 400 HP   | Camión de remolque  |
| G564E      | Iveco Stralis        | 500 HP   | Camión de caja      |
| X456C      | Scania R             | 450 HP   | Camión de caja      |
+------------+----------------------+----------+---------------------+







~ PAQUETES ~

INSERT INTO Paquetes (CodPaquete, Dirección, Destinatario, Descripción, CodProvincia, CodCamionero) VALUES (1, 'Calle A 123', 'Carlota Pérez', 'Paquete de ropa', 1, '465651554A');
INSERT INTO Paquetes (CodPaquete, Dirección, Destinatario, Descripción, CodProvincia, CodCamionero) VALUES (2, 'Calle B 456', 'Marta García', 'Paquete de electrónica', 2, '512674896B');
INSERT INTO Paquetes (CodPaquete, Dirección, Destinatario, Descripción, CodProvincia, CodCamionero) VALUES (3, 'Calle C 789', 'Juan López', 'Paquete de libros', 3, '125478635C');
INSERT INTO Paquetes (CodPaquete, Dirección, Destinatario, Descripción, CodProvincia, CodCamionero) VALUES (4, 'Calle D 159', 'Ana Díaz', 'Paquete de alimentos', 4, '125348795D');
INSERT INTO Paquetes (CodPaquete, Dirección, Destinatario, Descripción, CodProvincia, CodCamionero) VALUES (5, 'Calle E 258', 'David Fernández', 'Paquete de herramientas', 5, '218674536E');

INSERT INTO Paquetes (CodPaquete, Dirección, Destinatario, Descripción, CodProvincia, CodCamionero) VALUES (6, 'Calle B 12', 'Sandra García', 'Paquete de ropa', 6, '52016412F');
INSERT INTO Paquetes (CodPaquete, Dirección, Destinatario, Descripción, CodProvincia, CodCamionero) VALUES (7, 'Calle F 2', 'Maribel González', 'Paquete de maquillaje', 7, '23458796P');
INSERT INTO Paquetes (CodPaquete, Dirección, Destinatario, Descripción, CodProvincia, CodCamionero) VALUES (8, 'Calle C 9', 'Paula Rubín', 'Paquete de perfume', 8, '12547836W');
INSERT INTO Paquetes (CodPaquete, Dirección, Destinatario, Descripción, CodProvincia, CodCamionero) VALUES (9, 'Calle C 7', 'Ángel Benito', 'Paquete de electrónica', 9, '856795223X');

mysql> select * from paquetes;
+------------+-------------+-------------------+-------------------------+--------------+--------------+
| CodPaquete | Dirección   | Destinatario      | Descripción             | CodProvincia | CodCamionero |
+------------+-------------+-------------------+-------------------------+--------------+--------------+
|          1 | Calle A 123 | Carlota Pérez     | Paquete de ropa         |            1 | 465651554A   |
|          2 | Calle B 456 | Marta García      | Paquete de electrónica  |            2 | 512674896B   |
|          3 | Calle C 789 | Juan López        | Paquete de libros       |            3 | 125478635C   |
|          4 | Calle D 159 | Ana Díaz          | Paquete de alimentos    |            4 | 125348795D   |
|          5 | Calle E 258 | David Fernández   | Paquete de herramientas |            5 | 218674536E   |
|          6 | Calle B 12  | Sandra García     | Paquete de ropa         |            6 | 52016412F    |
|          7 | Calle F 2   | Maribel González  | Paquete de maquillaje   |            7 | 23458796P    |
|          8 | Calle C 9   | Paula Rubín       | Paquete de perfume      |            8 | 12547836W    |
|          9 | Calle C 7   | Ángel Benito      | Paquete de electrónica  |            9 | 856795223X   |
+------------+-------------+-------------------+-------------------------+--------------+--------------+






~ CONDUCIR ~
INSERT INTO Conducir (Fichaje, CodCamionero, CodCamión) VALUES (1, '465651554A', '1235A');
INSERT INTO Conducir (Fichaje, CodCamionero, CodCamión) VALUES (2, '512674896B', '2489B');
INSERT INTO Conducir (Fichaje, CodCamionero, CodCamión) VALUES (3, '125478635C', '8080C');
INSERT INTO Conducir (Fichaje, CodCamionero, CodCamión) VALUES (4, '125348795D', '3322D');
INSERT INTO Conducir (Fichaje, CodCamionero, CodCamión) VALUES (5, '218674536E', '1114E');

INSERT INTO Conducir (Fichaje, CodCamionero, CodCamión) VALUES (6, '512674896B', 'G510B');
INSERT INTO Conducir (Fichaje, CodCamionero, CodCamión) VALUES (7, '23458796P', 'X456C');
INSERT INTO Conducir (Fichaje, CodCamionero, CodCamión) VALUES (8, '12547836W', '1028D');
INSERT INTO Conducir (Fichaje, CodCamionero, CodCamión) VALUES (9, '218674536E', 'G564E');

mysql> select * from conducir;
+---------+---------------------+--------------+------------+
| Fichaje | Fecha               | CodCamionero | CodCamión  |
+---------+---------------------+--------------+------------+
|       1 | 2023-01-30 21:11:33 | 465651554A   | 1235A      |
|       2 | 2023-01-30 21:11:41 | 512674896B   | 2489B      |
|       3 | 2023-01-30 21:11:49 | 125478635C   | 8080C      |
|       4 | 2023-01-30 21:11:55 | 125348795D   | 3322D      |
|       5 | 2023-01-30 21:12:02 | 218674536E   | 1114E      |
|       6 | 2023-01-30 21:30:15 | 512674896B   | G510B      |
|       7 | 2023-01-30 21:30:15 | 23458796P    | X456C      |
|       8 | 2023-01-30 21:30:15 | 12547836W    | 1028D      |
|       9 | 2023-01-30 21:30:18 | 218674536E   | G564E      |
+---------+---------------------+--------------+------------+








EJERCICIOS PREGUNTAS


¿Cuántos camioneros tengo en plantilla?
mysql> select * from camioneros;
+------------+-------------------+-----------+------------+----------+------------+
| Dni        | Nombre            | Teléfono  | Dirección  | Salario  | Población  |
+------------+-------------------+-----------+------------+----------+------------+
| 125348795D | Antonio López     | 612457863 | Calle D    |  2500.00 | Sevilla    |
| 12547836W  | Belen Sánchez     | 666654782 | Calle H    |  3300.00 | Barcelona  |
| 125478635C | María Fernández   | 648753156 | Calle C    |  2000.00 | Valencia   |
| 218674536E | Luisa Díaz        | 632457823 | Calle E    |  3000.00 | Bilbao     |
| 23458796P  | Silvia Castro     | 687453221 | Calle G    |  1230.00 | Segovia    |
| 465651554A | Pedro García      | 625789614 | Calle A    |  1000.00 | Madrid     |
| 512674896B | Juan Rodriguez    | 674593126 | Calle B    |  1500.00 | Barcelona  |
| 52016412F  | Carlos Sanz       | 647896325 | Calle F    |  1500.00 | Madrid     |
| 856795223X | Miguel Méndez     | 612004700 | Calle I    | 25000.00 | Sevilla    |
+------------+-------------------+-----------+------------+----------+------------+


¿Cuál es el salario máximo? ¿Quién lo cobra?

mysql> SELECT Nombre, Salario
    -> FROM camioneros
    -> ORDER BY Salario DESC
    -> LIMIT 1;
+----------------+----------+
| Nombre         | Salario  |
+----------------+----------+
| Miguel Méndez  | 25000.00 |
+----------------+----------+



¿Cuántos camiones tengo en mi parque?

mysql> select * from camiones;
+------------+----------------------+----------+---------------------+
| Matrícula  | Modelo               | Potencia | Tipo                |
+------------+----------------------+----------+---------------------+
| 1028D      | Daf XF               | 430 HP   | Camión de remolque  |
| 1114E      | Iveco Stralis        | 500 HP   | Camión de caja      |
| 1235A      | Volvo FH16           | 500 HP   | Camión de remolque  |
| 2489B      | Mercedes-Benz Actros | 400 HP   | Camión de remolque  |
| 3322D      | Daf XF               | 430 HP   | Camión de remolque  |
| 8080C      | Scania R             | 450 HP   | Camión de caja      |
| G510B      | Mercedes-Benz Actros | 400 HP   | Camión de remolque  |
| G564E      | Iveco Stralis        | 500 HP   | Camión de caja      |
| X456C      | Scania R             | 450 HP   | Camión de caja      |
+------------+----------------------+----------+---------------------+

¿De qué modelos son los camiones?

mysql> SELECT DISTINCT Modelo FROM camiones;
+----------------------+
| Modelo               |
+----------------------+
| Daf XF               |
| Iveco Stralis        |
| Volvo FH16           |
| Mercedes-Benz Actros |
| Scania R             |
+----------------------+




¿Cuál es la descripción de todos los paquetes que son enviados a Barcelona (o cualquier otra provincia dada de alta)?

mysql> SELECT paquetes.Descripción
    -> FROM paquetes
    -> JOIN provincias ON paquetes.CodProvincia = provincias.CodProvincia
    -> WHERE provincias.Nombre = 'Barcelona';
+-------------------------+
| Descripción             |
+-------------------------+
| Paquete de electrónica  |
| Paquete de perfume      |
+-------------------------+



¿Cuántos paquetes tienen a Cristina LM (o cualquier otro nombre) como destinatario?

mysql> SELECT COUNT(*)
    -> FROM paquetes
    -> WHERE Destinatario = 'Juan López';
+----------+
| COUNT(*) |
+----------+
|        1 |
+----------+




¿De cuantos camioneros desconozco su lugar de residencia? ¿Quiénes son?

mysql> SELECT nombre
    -> FROM camioneros
    -> WHERE población IS NULL;
Empty set (0.00 sec)



¿Qué camión tiene la potencia máxima y cuál es?

mysql> SELECT modelo FROM camiones WHERE potencia=(SELECT MAX(potencia) FROM camiones) ORDER BY potencia DESC LIMIT 1;
+---------------+
| modelo        |
+---------------+
| Iveco Stralis |
+---------------+




Eliminar el último paquete dado de alta, porque parece que contiene información incorrecta.

delete from paquetes where codpaquete=7;
Query OK, 1 row affected (0.01 sec)





¿Cuál es la cuantía a pagar a final de mes a toda la plantilla?

SELECT SUM(salario) FROM camioneros;
+--------------+
| SUM(salario) |
+--------------+
|     41030.00 |
+--------------+



Necesitamos una nueva característica en los paquetes, que nos diga de qué tipo son: si urgentes, normales, o inmediatos (entrega en dos horas).

ALTER TABLE paquetes ADD COLUMN tipo_entrega ENUM('urgentes', 'normales', 'inmediatos');



El primer paquete dado de alta, será urgente, los dos últimos inmediatos,  y el resto (7u 8) normales. Se puede utilizar el orden de las claves primarias en lugar del orden de inserción (por si no se ha declarado claves autoincrementales).

ALTER TABLE paquetes MODIFY tipo_entrega VARCHAR(50)

DECLARE @min_cod INT;
DECLARE @max_cod INT;

SELECT @min_cod = MIN(CodPaquete) FROM paquetes;
SELECT @max_cod = MAX(CodPaquete) FROM paquetes;

UPDATE paquetes SET tipo_entrega = 
  CASE 
    WHEN CodPaquete = @min_cod THEN 'urgente' 
    WHEN CodPaquete >= @max_cod - 1 THEN 'inmediato' 
    ELSE 'normal' 
  END;





¿Qué camioneros residen en Madrid con un sueldo superior a 3000? (ajustar provincia y sueldo)

SELECT * FROM camioneros WHERE población = 'Madrid' AND salario > 3000;
Empty set (0.00 sec)





¿Cuántos paquetes no tienen descripción y van a Pontevedra? (ajustar provincia)
 SELECT COUNT(*)
    -> FROM paquetes
    -> WHERE descripción IS NULL
    -> AND codProvincia= 6;

    El codProvincia de Madrid es 6
+----------+
| COUNT(*) |
+----------+
|        0 |


Dar de alta un nuevo empleado con el sueldo 100 € superior a la parte entera del sueldo medio de los camioneros que ya existen en la empresa.

INSERT INTO camioneros (Dni, Nombre, Teléfono, Dirección, Salario, Población)
VALUES ('123456789Z', 'Raquel Sanz', '689742331', 'Calle LM', 
        CEILING(AVG(Salario)) + 100, 'Madrid');






¿De dónde son los empleados de mi plantilla? ¿Cuántos hay de cada una de las poblaciones?

SELECT Población, COUNT(*) FROM camioneros
GROUP BY Población;
+------------+----------+
| Población  | COUNT(*) |
+------------+----------+
| Barcelona  |        2 |
| Bilbao     |        1 |
| Madrid     |        2 |
| Segovia    |        1 |
| Sevilla    |        2 |
| Valencia   |        1 |
+------------+----------+




Simular una posible bajada de sueldo de un 10%, que será enviada a los trabajadores,anunciándoles que será revertida con el final de la crisis. Esperaremos a la respuestade aceptación para realizar la bajada real, si es que llega a producirse.


Creo una nueva columna en la tabla para guardar el nuevo salario:
mysql> ALTER TABLE camioneros ADD new_salario FLOAT;

Actualizo la nueva columna con el nuevo salario calculado como un 10% menos que el salario actual:
mysql> UPDATE camioneros SET new_salario = salario * 0.9;

Verifico los cambios realizados:
mysql> SELECT * FROM camioneros;
+------------+-------------------+-----------+------------+----------+------------+-------------+
| Dni        | Nombre            | Teléfono  | Dirección  | Salario  | Población  | new_salario |
+------------+-------------------+-----------+------------+----------+------------+-------------+
| 125348795D | Antonio López     | 612457863 | Calle D    |  2500.00 | Sevilla    |        2250 |
| 12547836W  | Belen Sánchez     | 666654782 | Calle H    |  3300.00 | Barcelona  |        2970 |
| 125478635C | María Fernández   | 648753156 | Calle C    |  2000.00 | Valencia   |        1800 |
| 218674536E | Luisa Díaz        | 632457823 | Calle E    |  3000.00 | Bilbao     |        2700 |
| 23458796P  | Silvia Castro     | 687453221 | Calle G    |  1230.00 | Segovia    |        1107 |
| 465651554A | Pedro García      | 625789614 | Calle A    |  1000.00 | Madrid     |         900 |
| 512674896B | Juan Rodriguez    | 674593126 | Calle B    |  1500.00 | Barcelona  |        1350 |
| 52016412F  | Carlos Sanz       | 647896325 | Calle F    |  1500.00 | Madrid     |        1350 |
| 856795223X | Miguel Méndez     | 612004700 | Calle I    | 25000.00 | Sevilla    |       22500 |
+------------+-------------------+-----------+------------+----------+------------+-------------+


Revertir los cambios en caso de no ser aceptados por los trabajadores:
 UPDATE camioneros SET new_salario = salario;






 Obtener un listado de las provincias registradas:

mysql> select * from provincias;
+--------------+-----------+
| CodProvincia | Nombre    |
+--------------+-----------+
|            1 | Madrid    |
|            2 | Barcelona |
|            3 | Valencia  |
|            4 | Sevilla   |
|            5 | Zaragoza  |
|            6 | Madrid    |
|            7 | Segovia   |
|            8 | Barcelona |
|            9 | Salamanca |
+--------------+-----------+



Generar, finalmente una bajada de sueldo del 5% sólo a los 6 camioneros de mayor sueldo
 SELECT *, salario - (salario * 0.05) AS nuevo_salario
    -> FROM camioneros
    -> WHERE salario = (SELECT MAX(salario)
    ->                 FROM camioneros
    ->                 ORDER BY salario DESC
    ->                 LIMIT 6);
+------------+----------------+-----------+------------+----------+------------+-------------+---------------+
| Dni        | Nombre         | Teléfono  | Dirección  | Salario  | Población  | new_salario | nuevo_salario |
+------------+----------------+-----------+------------+----------+------------+-------------+---------------+
| 856795223X | Miguel Méndez  | 612004700 | Calle I    | 25000.00 | Sevilla    |       25000 |      23750.00 |
+------------+----------------+-----------+------------+----------+------------+-------------+---------------+



¿Cuál es el sueldo medio de los camioneros de la empresa?

SELECT AVG(salario)
    -> FROM camioneros;
+--------------+
| AVG(salario) |
+--------------+
|  4558.888889 |



¿Qué potencia media tienen los camiones de la empresa?

mysql> SELECT AVG(potencia)
    -> FROM camiones;
+-------------------+
| AVG(potencia)     |
+-------------------+
| 451.1111111111111 |
+-------------------+



Número de viajes de un camionero en particular en un año.

*Tendría que haber una tabla con el nombre fecha

 SELECT COUNT(*)
    -> FROM conducir
    -> WHERE CodCamión = CodCamionero
    -> AND fecha BETWEEN '2022-01-01' AND '2022-12-31';
+----------+
| COUNT(*) |
+----------+
|        0 |
+----------+



¿Cuántos paquetes se dirigen a Zaragoza?

El codProvincia de Zaragoza es el 5

 SELECT COUNT(*)
    -> FROM paquetes
    -> WHERE codprovincia = 5;
+----------+
| COUNT(*) |
+----------+
|       1|
+----------+



Obtener un listado de los códigos de todos los paquetes que tiene como destino Albacete (o cualquier otra provincia)

SELECT * FROM paquetes WHERE CodProvincia = 1;

El codProvincia 1 es Madrid 

