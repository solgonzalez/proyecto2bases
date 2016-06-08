CREATE DEFINER=`root`@`localhost` PROCEDURE `GustosXCliente`(IN pId INT)
BEGIN
SELECT CE.nombre,P.nombre,P.Apellidos
FROM Cliente C INNER JOIN cervezasxcliente CC
ON C.id=CC.idCliente INNER JOIN PERSONA P
ON C.idPersona=P.id 
INNER JOIN Cerveza CE ON CC.idCerveza=CEW .id
WHERE CE.id=pId;
END