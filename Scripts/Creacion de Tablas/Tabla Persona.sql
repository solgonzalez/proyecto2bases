-- -----------------------------------------------------
-- Table `BaseProyecto2`.`Persona`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BaseProyecto2`.`Persona` (
  `id` INT NOT NULL AUTO_INCREMENT  COMMENT 'LLAVE PRIMARIA',
  `nombre` VARCHAR(45) NULL  COMMENT 'NOMBRE DE PERSONA',
  `apellido` VARCHAR(45) NULL COMMENT 'APELLIDO DE PERSONA',
  `cedula` VARCHAR(45) NULL COMMENT 'NUMERO DE DENTIFICACION DE LA PERSONA',

  `usuarioCreacion` VARCHAR(45) NULL COMMENT 'CAMPO AUDITORIA',
  `fechaCreacion` DATETIME NULL COMMENT 'CAMPO AUDITORIA',
  `usuarioUltimaModificacion` VARCHAR(45) NULL COMMENT 'CAMPO AUDITORIA',
  `FechaUltimaModificacion` DATETIME NULL COMMENT 'CAMPO AUDITORIA',

  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC))

COMMENT 'TABLA PERSONA',
ENGINE = InnoDB;