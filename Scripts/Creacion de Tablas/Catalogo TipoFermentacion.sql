-- -----------------------------------------------------
-- Table `BaseProyecto2`.`TipoFermentacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BaseProyecto2`.`TipoFermentacion` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT 'LLAVE PRIMARIA',
  `descripcion` VARCHAR(45) NULL COMMENT 'NOMBRE DEL TIPO DE FERMENTACIÓN',

  `usuarioCreacion` VARCHAR(45) NULL COMMENT 'CAMPO AUDITORÍA',
  `fechaCreacion` DATETIME NULL COMMENT 'CAMPO AUDITORÍA',
  `usuarioUltimaModificacion` VARCHAR(45) NULL COMMENT 'CAMPO AUDITORÍA',
  `FechaUltimaModificacion` DATETIME NULL COMMENT 'CAMPO AUDITORÍA',

  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC))

COMMENT 'CATALOGO DEL TIPO DE FERMENTACIÓN DE CERVEZA',
ENGINE = InnoDB;