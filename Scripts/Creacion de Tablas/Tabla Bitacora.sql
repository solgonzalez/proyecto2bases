-- -----------------------------------------------------
-- Table `BaseProyecto2`.`Bitacora`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BaseProyecto2`.`Bitacora` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT 'LLAVE PRIMARIA',
  `precioAnterior` INT NULL COMMENT 'PRECIO ACTUAL DE CERVEZA',
  `nuevoPrecio` INT NULL COMMENT 'PRECIO ACTUALIZADO DE CERVEZA',
  `idCerveza` INT NULL COMMENT 'FK DE LA TABLA CERVEZA',

  `usuarioCreacion` VARCHAR(45) NULL COMMENT 'CAMPO AUDITORIA',
  `fechaCreacion` DATETIME NULL COMMENT 'CAMPO AUDITORIA',
  `usuarioUltimaModificacion` VARCHAR(45) NULL COMMENT 'CAMPO AUDITORIA',
  `FechaUltimaModificacion` DATETIME NULL COMMENT 'CAMPO AUDITORIA',

  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC),
  INDEX `FK_idCerveza_idx` (`idCerveza` ASC),
  CONSTRAINT `FK_idCerveza`
    FOREIGN KEY (`idCerveza`)
    REFERENCES `BaseProyecto2`.`Cerveza` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)

COMMENT 'TABLA BITACORA: GUARDA ACTUALIZACIONES DE LOS PRECIOS DE LAS CERVEZAS',
ENGINE = InnoDB;