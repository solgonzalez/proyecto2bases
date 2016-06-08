CREATE DEFINER=`root`@`localhost` PROCEDURE `SELECT_CERVEZA`(IN pId INT)
BEGIN
	SELECT id, nombre, descripcion
    FROM CERVEZA
    WHERE id=pID;
END