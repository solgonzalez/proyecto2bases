-- -----------------------------------------------------
-- Table `BaseProyecto2`.`CervezasXPersona`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BaseProyecto2`.`CervezasXPersona` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT 'IDENTIFICADOR DE TABLA',
  `idPersona` INT NULL COMMENT 'LLAVE PRIMARIA, FK DE TABLA PERSONA',
  `idCerveza` INT NULL COMMENT 'LLAVE PRIMARIA, FK DE TABLA CERVEZA',
  `cantidad` VARCHAR(45) NULL COMMENT '',

  `usuarioCreacion` VARCHAR(45) NULL COMMENT 'CAMPO AUDITORÍA',
  `fechaCreacion` DATETIME NULL COMMENT 'CAMPO AUDITORÍA',
  `usuarioUltimaModificacion` VARCHAR(45) NULL COMMENT 'CAMPO AUDITORÍA',
  `FechaUltimaModificacion` DATETIME NULL COMMENT 'CAMPO AUDITORÍA',

  PRIMARY KEY (`id`),
  INDEX `FK_CervezasXPersona_idPersona_idx` (`idPersona` ASC),
  INDEX `FK_CervezasXPersona_idCerveza_idx` (`idCerveza` ASC),
  CONSTRAINT `FK_CervezasXPersona_idPersona`
    FOREIGN KEY (`idPersona`)
    REFERENCES `BaseProyecto2`.`Persona` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_CervezasXPersona_idCerveza`
    FOREIGN KEY (`idCerveza`)
    REFERENCES `BaseProyecto2`.`Cerveza` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)

COMMENT 'TABLA DE CERVEZAS POR PERSONA: SEGUN GUSTOS DE CLIENTE',
ENGINE = InnoDB;