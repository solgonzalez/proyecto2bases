-- -----------------------------------------------------
-- Table `BaseProyecto2`.`Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BaseProyecto2`.`Usuario` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT 'LLAVE PRIMARIA',
  `nombreUsuario` VARCHAR(45) NULL COMMENT 'NOMBRE DE USUARIO',
  `contrasena` VARCHAR(45) NULL COMMENT 'CONTRASENA DEL USUARIO',
  `idPersona` INT NULL COMMENT 'FK DE PERSONA',

  `usuarioCreacion` VARCHAR(45) NULL COMMENT 'CAMPO AUDITORIA',
  `fechaCreacion` DATETIME NULL COMMENT 'CAMPO AUDITORIA',
  `usuarioUltimaModificacion` VARCHAR(45) NULL COMMENT 'CAMPO AUDITORIA',
  `FechaUltimaModificacion` DATETIME NULL COMMENT 'CAMPO AUDITORIA',

  PRIMARY KEY (`id`),
  INDEX `FK_Usuario_idPersona_idx` (`idPersona` ASC),
  CONSTRAINT `FK_Usuario_idPersona`
    FOREIGN KEY (`idPersona`)
    REFERENCES `BaseProyecto2`.`Persona` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)

COMMENT = 'Tabla Usuario: Guarda usuario y contrasenia de persona'
ENGINE = InnoDB;