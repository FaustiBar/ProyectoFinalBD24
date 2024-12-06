
-- SQL Script: 100 Queries for Activities, Reservations, and Members Data
-- Each query is accompanied by a brief comment explaining its purpose.

-- SECTION 1: Queries for actividades_del_club

-- INSERTS: Adding sample data into actividades_del_club
INSERT INTO actividades_del_club (Id_socio, nombre, fecha_de_nacimiento, deporte, categoría)
VALUES (1, 'Kenji Espinoza', '1993-06-24', 'futbol', 'mayores'); -- Adding a football player to mayores category
INSERT INTO actividades_del_club (Id_socio, nombre, fecha_de_nacimiento, deporte, categoría)
VALUES (2, 'Alicia Solís', '1985-07-17', 'Patinaje artístico', 'mayores'); -- Adding a figure skater to mayores category
INSERT INTO actividades_del_club (Id_socio, nombre, fecha_de_nacimiento, deporte, categoría)
VALUES (3, 'Rosa Márquez', '2016-03-30', 'handball', 'sub11'); -- Adding a handball player to sub11 category

-- SELECTIONS: Retrieving data from actividades_del_club
SELECT * FROM actividades_del_club; -- Retrieve all activities without filters
SELECT nombre, deporte FROM actividades_del_club WHERE categoría = 'mayores'; -- Fetch participants in the mayores category

-- UPDATES: Modifying records in actividades_del_club
UPDATE actividades_del_club SET deporte = 'futsal' WHERE Id_socio = 1; -- Update sport for a specific socio
UPDATE actividades_del_club SET categoría = 'sub18' WHERE fecha_de_nacimiento < '2005-01-01'; -- Change category based on age

-- DELETIONS: Removing data from actividades_del_club
DELETE FROM actividades_del_club WHERE categoría = 'sub11'; -- Remove all sub11 participants
DELETE FROM actividades_del_club WHERE deporte = 'handball'; -- Delete all handball players

-- SECTION 2: Queries for asientos_reservados

-- INSERTS: Adding sample data into asientos_reservados
INSERT INTO asientos_reservados (Id_socio, nombre, tribuna, tiempo_de_reserva, cant_Asientos)
VALUES (19, 'Nicolás Flores', 'Palcos', 3, 2); -- Adding a reservation in the Palcos tribuna
INSERT INTO asientos_reservados (Id_socio, nombre, tribuna, tiempo_de_reserva, cant_Asientos)
VALUES (485, 'Joyce Drake', 'Tribuna Oeste', 7, 4); -- Adding a reservation in Tribuna Oeste

-- SELECTIONS: Retrieving data from asientos_reservados
SELECT * FROM asientos_reservados WHERE tribuna = 'Palcos'; -- Fetch all Palcos tribuna reservations
SELECT nombre, cant_Asientos FROM asientos_reservados WHERE tiempo_de_reserva > 5; -- Get reservations with extended time

-- UPDATES: Modifying records in asientos_reservados
UPDATE asientos_reservados SET cant_Asientos = 6 WHERE tribuna = 'Socios'; -- Update number of seats in Socios tribuna
UPDATE asientos_reservados SET tiempo_de_reserva = 10 WHERE Id_socio = 19; -- Extend reservation time

-- DELETIONS: Removing data from asientos_reservados
DELETE FROM asientos_reservados WHERE tiempo_de_reserva < 3; -- Remove short reservations
DELETE FROM asientos_reservados WHERE cant_Asientos = 2; -- Remove small seat reservations

-- SECTION 3: Queries for socios

-- INSERTS: Adding sample data into socios
INSERT INTO socios (Id_socio, Nombre, Fecha_de_nacimiento, fecha_de_asociado, cuota_al_dia, meses_como_socio, Vitalicio)
VALUES (1, 'Alejandro Martínez', '1963-03-31', '1972-02-06', 'Sí', 643, 'Sí'); -- Adding a long-time socio
INSERT INTO socios (Id_socio, Nombre, Fecha_de_nacimiento, fecha_de_asociado, cuota_al_dia, meses_como_socio, Vitalicio)
VALUES (2, 'Lucía Fernández', '1922-05-10', '1939-11-08', 'Sí', 1035, 'Sí'); -- Adding a senior socio

-- SELECTIONS: Retrieving data from socios
SELECT * FROM socios WHERE cuota_al_dia = 'Sí'; -- Fetch all socios up-to-date on fees
SELECT Nombre, Vitalicio FROM socios WHERE meses_como_socio > 500; -- Fetch long-time socios

-- UPDATES: Modifying records in socios
UPDATE socios SET cuota_al_dia = 'No' WHERE Id_socio = 1; -- Mark a socio as not up-to-date on fees
UPDATE socios SET meses_como_socio = 700 WHERE Vitalicio = 'Sí'; -- Update membership duration for vitalicios

-- DELETIONS: Removing data from socios
DELETE FROM socios WHERE meses_como_socio < 200; -- Remove socios with short membership duration
DELETE FROM socios WHERE Vitalicio = 'No'; -- Remove non-vitalicio socios

INSERT INTO actividades_del_club (Id_socio, nombre, fecha_de_nacimiento, deporte, categoría)
VALUES (938, 'Kenji Espinoza', '1993-06-24', 'futbol', 'mayores');

INSERT INTO actividades_del_club (Id_socio, nombre, fecha_de_nacimiento, deporte, categoría)
VALUES (46, 'Alicia Solís', '1985-07-17', 'Patinaje artístico', 'mayores');

SELECT * FROM actividades_del_club WHERE deporte = 'futbol';
SELECT nombre, deporte FROM actividades_del_club WHERE categoría = 'mayores';

UPDATE actividades_del_club SET deporte = 'handball' WHERE Id_socio = 938;
UPDATE actividades_del_club SET categoría = 'sub15' WHERE fecha_de_nacimiento > '2010-01-01';

DELETE FROM actividades_del_club WHERE categoría = 'mayores' AND deporte = 'natación';
DELETE FROM actividades_del_club WHERE Id_socio = 99;

-- 1. Recupera toda la información de la tabla 'socios'.
SELECT * FROM socios;

-- 2. Muestra los nombres y si son socios vitalicios.
SELECT Nombre, Vitalicio FROM socios;

-- 3. Recupera los socios que están al día con sus cuotas.
SELECT * FROM socios WHERE cuota_al_día = 'Sí';

-- 4. Filtra a los socios con edad mayor a 50 años.
SELECT Nombre, Fecha_de_nacimiento 
FROM socios 
WHERE TIMESTAMPDIFF(YEAR, Fecha_de_nacimiento, CURDATE()) > 50;

-- 5. Selecciona las actividades relacionadas con el deporte 'futbol'.
SELECT * FROM `Actividades del club` WHERE deporte = 'futbol';

-- 6. Ordena a los socios desde el más joven al más mayor.
SELECT * FROM socios ORDER BY Fecha_de_nacimiento DESC;

-- 7. Muestra las reservas ordenadas por la cantidad de asientos reservados, de mayor a menor.
SELECT * FROM `Asientos reservados` ORDER BY cant_Asientos DESC;

-- 8. Calcula cuántos socios tienen el estado de vitalicio.
SELECT COUNT(*) AS Total_vitalicios FROM socios WHERE Vitalicio = 'Sí';

-- 9. Calcula el promedio de meses como socio en la tabla 'socios'.
SELECT AVG(meses_como_socio) AS Promedio_meses FROM socios;

-- 10. Calcula el total de asientos reservados entre todas las reservas.
SELECT SUM(cant_Asientos) AS Total_asientos FROM `Asientos reservados`;

-- 11. Muestra las actividades de socios menores de edad (edad < 18).
SELECT nombre, deporte, categoría 
FROM `Actividades del club`
WHERE TIMESTAMPDIFF(YEAR, fecha_de_nacimiento, CURDATE()) < 18;

-- 12. Filtra socios cuyos nombres comienzan con la letra 'A'.
SELECT * FROM socios WHERE Nombre LIKE 'A%';

-- 13. Recupera las reservas realizadas para la tribuna "Socios".
SELECT * FROM `Asientos reservados` WHERE tribuna = 'Socios';

-- 14. Muestra reservas donde el tiempo de reserva sea mayor a 5 horas.
SELECT * FROM `Asientos reservados` WHERE tiempo_de_reserva > 5;

-- 15. Recupera socios con más de 10 años de antigüedad.
SELECT Nombre, meses_como_socio 
FROM socios 
WHERE meses_como_socio > 120;

-- 16. Cuenta cuántas reservas se han hecho por cada tribuna.
SELECT tribuna, COUNT(*) AS Total_reservas 
FROM `Asientos reservados` 
GROUP BY tribuna;

-- 17. Agrupa las actividades por deporte y cuenta cuántas hay en cada uno.
SELECT deporte, COUNT(*) AS Total_actividades 
FROM `Actividades del club` 
GROUP BY deporte;

-- 18. Agrupa los socios por su estado de vitalicio y cuenta cuántos hay en cada categoría.
SELECT Vitalicio, COUNT(*) AS Total_socios 
FROM socios 
GROUP BY Vitalicio;

-- 19. Calcula el promedio de asientos reservados para cada tribuna.
SELECT tribuna, AVG(cant_Asientos) AS Promedio_asientos 
FROM `Asientos reservados` 
GROUP BY tribuna;

-- 20. Suma la cantidad total de asientos reservados por cada socio.
SELECT nombre, SUM(cant_Asientos) AS Total_asientos 
FROM `Asientos reservados` 
GROUP BY nombre;

-- 21. Combina las tablas 'socios' y 'Actividades del club' para mostrar la información completa de las actividades.
SELECT a.Id_socio, a.nombre, a.deporte, s.meses_como_socio 
FROM `Actividades del club` a
JOIN socios s ON a.Id_socio = s.`Id socios`;

-- 22. Combina las tablas 'socios' y 'Asientos reservados' para mostrar las reservas realizadas por cada socio.
SELECT r.nombre, s.Vitalicio, r.cant_Asientos 
FROM `Asientos reservados` r
JOIN socios s ON r.Id_socio = s.`Id socios`;

-- 23. Muestra qué socios han reservado asientos y su actividad deportiva.
SELECT r.nombre, r.tribuna, a.deporte 
FROM `Asientos reservados` r
JOIN `Actividades del club` a ON r.Id_socio = a.Id_socio;

-- 24. Calcula el promedio de antigüedad (meses) de los socios en cada deporte.
SELECT a.deporte, AVG(s.meses_como_socio) AS Promedio_antiguedad 
FROM `Actividades del club` a
JOIN socios s ON a.Id_socio = s.`Id socios`
GROUP BY a.deporte;

-- 25. Encuentra los deportes de socios que han reservado asientos en la tribuna "Palcos".
SELECT DISTINCT a.deporte 
FROM `Asientos reservados` r
JOIN `Actividades del club` a ON r.Id_socio = a.Id_socio
WHERE r.tribuna = 'Palcos';

-- 26. Encuentra al socio que ha reservado más asientos en total.
SELECT nombre 
FROM `Asientos reservados` 
GROUP BY nombre 
ORDER BY SUM(cant_Asientos) DESC 
LIMIT 1;

-- 27. Muestra los socios que han reservado más asientos que el promedio general.
SELECT nombre, SUM(cant_Asientos) AS Total_asientos 
FROM `Asientos reservados` 
GROUP BY nombre
HAVING Total_asientos > (SELECT AVG(cant_Asientos) FROM `Asientos reservados`);

-- 28. Selecciona las tribunas con al menos 3 reservas.
SELECT tribuna 
FROM `Asientos reservados` 
GROUP BY tribuna 
HAVING COUNT(*) >= 3;

-- 29. Encuentra el deporte más practicado en el club.
SELECT deporte 
FROM `Actividades del club` 
GROUP BY deporte 
ORDER BY COUNT(*) DESC 
LIMIT 1;

-- 30. Muestra la fecha de nacimiento del socio que lleva más tiempo como miembro.
SELECT Fecha_de_nacimiento 
FROM socios 
ORDER BY meses_como_socio DESC 
LIMIT 1;
