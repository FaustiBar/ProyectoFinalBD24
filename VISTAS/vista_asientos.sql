CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `mydb`.`view_asientos_reservados` AS
    SELECT 
        `mydb`.`asientos_reservados`.`Id_socio` AS `id_socio`,
        `mydb`.`asientos_reservados`.`nombre` AS `nombre`,
        `mydb`.`asientos_reservados`.`tribuna` AS `tribuna`,
        `mydb`.`asientos_reservados`.`tiempo_de_reserva` AS `tiempo_reserva`,
        `mydb`.`asientos_reservados`.`cant_Asientos` AS `cantidad_asientos`
    FROM
        `mydb`.`asientos_reservados`