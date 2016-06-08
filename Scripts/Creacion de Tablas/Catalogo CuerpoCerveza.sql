-- -----------------------------------------------------
-- Table `BaseProyecto2`.`Cuerpo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BaseProyecto2`.`Cuerpo` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT 'LLAVE PRIMARIA',
  `descripcion` VARCHAR(45) NULL COMMENT 'NOMBRE DEL CUERPO DE UNA CERVEZA',

  `usuarioCreacion` VARCHAR(45) NULL COMMENT 'CAMPO AUDITORÍA',
  `fechaCreacion` DATETIME NULL COMMENT 'CAMPO AUDITORÍA',
  `usuarioUltimaModificacion` VARCHAR(45) NULL COMMENT 'CAMPO AUDITORÍA',
  `FechaUltimaModificacion` DATETIME NULL COMMENT 'CAMPO AUDITORÍA',

  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC))

COMMENT 'CATÁLOGO DE CUERPO DE UNA CERVEZA',
ENGINE = InnoDB;
