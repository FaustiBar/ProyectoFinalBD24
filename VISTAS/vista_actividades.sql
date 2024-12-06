CREATE VIEW view_actividades_del_club AS
SELECT
    Id_socio AS id_socio,
    nombre AS nombre,
    fecha_de_nacimiento AS fecha_nacimiento,
    deporte AS deporte,
    categoría AS categoria
FROM actividades_del_club;
