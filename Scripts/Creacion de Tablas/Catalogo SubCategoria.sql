-- -----------------------------------------------------
-- Table `BaseProyecto2`.`Subcategoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BaseProyecto2`.`Subcategoria` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT 'LLAVE PRIMARIA',
  `descripcion` VARCHAR(45) NULL COMMENT 'NOMBRE DE LA SUBCATEGORÍA DE CERVEZA',
  `idCategoriaPrincipal` INT NULL COMMENT 'FK DE LA TABLA CATEGORIA PRINCIPAL',

  `usuarioCreacion` VARCHAR(45) NULL COMMENT 'CAMPO AUDITORÍA',
  `fechaCreacion` DATETIME NULL COMMENT 'CAMPO AUDITORÍA',
  `usuarioUltimaModificacion` VARCHAR(45) NULL COMMENT 'CAMPO AUDITORÍA',
  `FechaUltimaModificacion` DATETIME NULL COMMENT 'CAMPO AUDITORÍA',

  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC),
  INDEX `idCategoriaPrincipal_idx` (`idCategoriaPrincipal` ASC),
  CONSTRAINT `FK_idCategoriaPrincipal`
    FOREIGN KEY (`idCategoriaPrincipal`)
    REFERENCES `BaseProyecto2`.`CategoriaPrincipal` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)

COMMENT 'CATÁLOGO SUBCATEGORÍA DE UNA CERVEZA',
ENGINE = InnoDB;