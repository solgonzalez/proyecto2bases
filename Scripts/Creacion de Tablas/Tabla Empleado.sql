-- -----------------------------------------------------
-- Table `BaseProyecto2`.`Empleado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BaseProyecto2`.`Empleado` (
  `id` INT NOT NULL AUTO_INCREMENT  COMMENT 'LLAVE PRIMARIA',
  `fechaIngreso` DATETIME NULL COMMENT 'FECHA DE INGRESO A LABORAR DE EMPLEADO',
  `idPersona` INT NULL COMMENT 'FK DE PERSONA',

  `usuarioCreacion` VARCHAR(45) NULL COMMENT 'CAMPO AUDITORIA',
  `fechaCreacion` DATETIME NULL COMMENT 'CAMPO AUDITORIA',
  `usuarioUltimaModificacion` VARCHAR(45) NULL COMMENT 'CAMPO AUDITORIA',
  `FechaUltimaModificacion` DATETIME NULL COMMENT 'CAMPO AUDITORIA',

  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC),
  INDEX `FK_Empleado_idPersona_idx` (`idPersona` ASC),
  CONSTRAINT `FK_Empleado_idPersona`
    FOREIGN KEY (`idPersona`)
    REFERENCES `BaseProyecto2`.`Persona` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)

COMMENT 'TABLA EMPLEADO',
ENGINE = InnoDB;