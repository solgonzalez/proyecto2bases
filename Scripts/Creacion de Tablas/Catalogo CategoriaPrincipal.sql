-- -----------------------------------------------------
-- Table `BaseProyecto2`.`CategoriaPrincipal`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BaseProyecto2`.`CategoriaPrincipal` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT 'LLAVE PRIMARIA',
  `descripcion` VARCHAR(45) NULL COMMENT 'NOMBRE DE LA CATEGORÍA DE UNA CERVEZA',

  `usuarioCreacion` VARCHAR(45) NULL COMMENT 'CAMPO AUDITORÍA',
  `fechaCreacion` DATETIME NULL COMMENT 'CAMPO AUDITORÍA',
  `usuarioUltimaModificacion` VARCHAR(45) NULL COMMENT 'CAMPO AUDITORÍA',
  `FechaUltimaModificacion` DATETIME NULL COMMENT 'CAMPO AUDITORÍA',

  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC))

COMMENT 'CATÁLOGO DE LA CATEGORÍA PRINCIPAL DE UNA CERVEZA',
ENGINE = InnoDB;

# COMMENT 'CAMPO AUDITORÍA',
# COMMENT '',
# AUTO_INCREMENT COMMENT 'LLAVE PRIMARIA',