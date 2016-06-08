-- -----------------------------------------------------
-- Table `BaseProyecto2`.`Estado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BaseProyecto2`.`Estado` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT 'LLAVE PRIMARIA',
  `nombre` VARCHAR(45) NULL COMMENT 'NOMBRE DEL ESTADO O PROVINCIA',
  `idPais` INT NULL COMMENT 'FK DE LA TABLA PAÍS',

  `usuarioCreacion` VARCHAR(45) NULL COMMENT 'CAMPO AUDITORÍA',
  `fechaCreacion` DATETIME NULL COMMENT 'CAMPO AUDITORÍA',
  `usuarioUltimaModificacion` VARCHAR(45) NULL COMMENT 'CAMPO AUDITORÍA',
  `FechaUltimaModificacion` DATETIME NULL COMMENT 'CAMPO AUDITORÍA',

  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC),
  INDEX `FK_Estado_idPais_idx` (`idPais` ASC),
  CONSTRAINT `FK_Estado_idPais`
    FOREIGN KEY (`idPais`)
    REFERENCES `BaseProyecto2`.`Pais` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)

COMMENT 'CATÁLOGO ESTADO O PROVINCIA DE UN PAÍS',
ENGINE = InnoDB;