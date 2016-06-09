-- -----------------------------------------------------
-- Table `BaseProyecto2`.`CervezasXCliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BaseProyecto2`.`CervezaXCliente` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT 'IDENTIFICADOR DE TABLA',
  `idCliente` INT NULL COMMENT 'LLAVE PRIMARIA, FK DE TABLA CLIENTE',
  `idCerveza` INT NULL COMMENT 'LLAVE PRIMARIA, FK DE TABLA CERVEZA',
  `cantidad` VARCHAR(45) NULL COMMENT '',

  `usuarioCreacion` VARCHAR(45) NULL COMMENT 'CAMPO AUDITORÍA',
  `fechaCreacion` DATETIME NULL COMMENT 'CAMPO AUDITORÍA',
  `usuarioUltimaModificacion` VARCHAR(45) NULL COMMENT 'CAMPO AUDITORÍA',
  `FechaUltimaModificacion` DATETIME NULL COMMENT 'CAMPO AUDITORÍA',

  PRIMARY KEY (`id`),
  INDEX `FK_CervezaXCliente_idCliente_idx` (`idCliente` ASC),
  INDEX `FK_CervezaXCliente_idCerveza_idx` (`idCerveza` ASC),
  CONSTRAINT `FK_CervezaXCliente_idCliente`
    FOREIGN KEY (`idCliente`)
    REFERENCES `BaseProyecto2`.`Cliente` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_CervezaXCliente_idCerveza`
    FOREIGN KEY (`idCerveza`)
    REFERENCES `BaseProyecto2`.`Cerveza` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)

COMMENT 'TABLA DE CERVEZAS POR CLIENTE: SEGUN GUSTOS DE CLIENTE',
ENGINE = InnoDB;