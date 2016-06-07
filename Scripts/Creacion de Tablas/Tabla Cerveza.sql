-- -----------------------------------------------------
-- Table `BaseProyecto2`.`Cerveza`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BaseProyecto2`.`Cerveza` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT 'LLAVE PRIMARIA',
  `nombre` VARCHAR(45) NULL COMMENT 'NOMBRE DE CERVEZA',
  `descripcion` VARCHAR(45) NULL COMMENT 'DETALLE ADICIONAL DE CERVEZA',
  `tiempoFermentacion` INT NULL COMMENT 'TIEMPO DE FERMENTACION DE CERVEZA',
  `temperatura` INT NULL COMMENT 'TEMPERATURA ADECUADA DE CERVEZA',
  `precio` INT NULL COMMENT 'PRECIO ACTUAL DE CERVEZA',
  `idTipoFermentacion` INT NULL COMMENT 'FK DE TABLA TIPOFERMENTACION',
  `idColor` INT NULL COMMENT 'FK DE LA TABLA COLOR',
  `idEstilo` INT NULL COMMENT 'FK DE LA TABLA ESTILO',
  `idCuerpo` INT NULL COMMENT 'FK DE LA TABLA CUERPO',

  `usuarioCreacion` VARCHAR(45) NULL COMMENT 'CAMPO AUDITORIA',
  `fechaCreacion` DATETIME NULL COMMENT 'CAMPO AUDITORIA',
  `usuarioUltimaModificacion` VARCHAR(45) NULL COMMENT 'CAMPO AUDITORIA',
  `FechaUltimaModificacion` DATETIME NULL COMMENT 'CAMPO AUDITORIA',

  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC),
  INDEX `idTipoFermentacion_idx` (`idTipoFermentacion` ASC),
  INDEX `idColor_idx` (`idColor` ASC),
  INDEX `idEstilo_idx` (`idEstilo` ASC),
  INDEX `FK_idCuerpo_idx` (`idCuerpo` ASC),

  CONSTRAINT `FK_idTipoFermentacion`
    FOREIGN KEY (`idTipoFermentacion`)
    REFERENCES `BaseProyecto2`.`TipoFermentacion` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_idColor`
    FOREIGN KEY (`idColor`)
    REFERENCES `BaseProyecto2`.`Color` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_idEstilo`
    FOREIGN KEY (`idEstilo`)
    REFERENCES `BaseProyecto2`.`Estilo` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_idCuerpo`
    FOREIGN KEY (`idCuerpo`)
    REFERENCES `BaseProyecto2`.`Cuerpo` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)

COMMENT 'TABLA CERVEZA',
ENGINE = InnoDB;
