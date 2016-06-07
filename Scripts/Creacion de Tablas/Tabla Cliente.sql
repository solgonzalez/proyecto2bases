-- -----------------------------------------------------
-- Table `BaseProyecto2`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BaseProyecto2`.`Cliente` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT 'LLAVE PRIMARIA',
  `rutaFoto` VARCHAR(45) NULL COMMENT 'STRING - RUTA DONDE SE ENCUENTRA FOTO DE CLIENTE',
  `direccionEspecifica` VARCHAR(45) NULL COMMENT 'DETALLES DE DIRECCION DEL CLIENTE',
  `idPersona` INT NULL COMMENT 'FK DE LA TABLAPERSONA',
  `idEstado` INT NULL COMMENT 'FK DE LA TABLA ESTADO',

  `usuarioCreacion` VARCHAR(45) NULL COMMENT 'CAMPO AUDITORÍA',
  `fechaCreacion` DATETIME NULL COMMENT 'CAMPO AUDITORÍA',
  `usuarioUltimaModificacion` VARCHAR(45) NULL COMMENT 'CAMPO AUDITORÍA',
  `FechaUltimaModificacion` DATETIME NULL COMMENT 'CAMPO AUDITORÍA',

  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC),
  INDEX `FK_Cliente_idPersona_idx` (`idPersona` ASC),
  INDEX `FK_Cliente_idEstado_idx` (`idEstado` ASC),

  CONSTRAINT `FK_Cliente_idPersona`
    FOREIGN KEY (`idPersona`)
    REFERENCES `BaseProyecto2`.`Persona` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,

  CONSTRAINT `FK_Cliente_idEstado`
    FOREIGN KEY (`idEstado`)
    REFERENCES `BaseProyecto2`.`Estado` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)

COMMENT 'TABLA CLIENTE',
ENGINE = InnoDB;