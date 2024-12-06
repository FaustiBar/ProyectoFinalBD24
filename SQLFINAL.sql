-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8mb3 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`actividades_del_club`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`actividades_del_club` (
  `Id_socio` VARCHAR(200) NOT NULL,
  `nombre` MEDIUMTEXT NULL DEFAULT NULL,
  `fecha_de_nacimiento` DATE NULL DEFAULT NULL,
  `deporte` MEDIUMTEXT NULL DEFAULT NULL,
  `categoría` MEDIUMTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`Id_socio`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`asientos_reservados`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`asientos_reservados` (
  `Id_socio` VARCHAR(200) NOT NULL,
  `nombre` MEDIUMTEXT NULL DEFAULT NULL,
  `tribuna` LONGTEXT NULL DEFAULT NULL,
  `tiempo_de_reserva` INT NULL DEFAULT NULL,
  `cant_Asientos` INT NULL DEFAULT NULL,
  PRIMARY KEY (`Id_socio`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`socios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`socios` (
  `Id socios` VARCHAR(200) NOT NULL,
  `Nombre` MEDIUMTEXT NULL DEFAULT NULL,
  `Fecha de nacimiento` DATE NULL DEFAULT NULL,
  `fecha de asociado` DATE NULL DEFAULT NULL,
  `cuota al día` TINYTEXT NULL DEFAULT NULL,
  `meses como socio` INT NULL DEFAULT NULL,
  `Vitalicio` TINYTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`Id socios`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
