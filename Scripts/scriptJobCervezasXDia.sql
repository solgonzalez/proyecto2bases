CREATE  EVENT `ventasXDia`
ON SCHEDULE EVERY 1 DAY STARTS CURRENT_TIMESTAMP
DO
SELECT CE.nombre,CC.cantidad,P.nombre,P.apellidos,P.cedula FROM cervezasxcliente CC
INNER JOIN cerveza CE ON CC.idCerveza=CE.id
INNER JOIN cliente C ON CC.idCliente=C.id
INNER JOIN PERSONA P ON C.idPersona=P.id
WHERE DAY(CC.fechaCreacion)=DAY(SYSDATE());