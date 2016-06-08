#FECHA: 6 JUNIO 2016
#AUTOR: MARIELA BARRANTES
#DESCRIPCION: STORED PROCEDURE - UPDATES


DELIMITER //

#UPDATES CATALOGOS
#UPDATE COLOR
CREATE procedure UPDATE_COLOR(pID INT,IN pDESCRIPCION varchar(200))
BEGIN
	UPDATE COLOR
    SET descripcion = pDESCRIPCION
    WHERE id = pID;
END//

#UPDATE CUERPO
CREATE procedure UPDATE_CUERPO(pID INT, IN pDESCRIPCION varchar(45))
BEGIN
	UPDATE CUERPO
    SET descripcion = pDESCRIPCION
    WHERE id = pID;
END//

#UPDATE ESTADO
CREATE procedure UPDATE_ESTADO(pID INT, IN pNOMBRE varchar(45))
BEGIN
	UPDATE ESTADO
    SET nombre = pNOMBRE
    WHERE id = pID;
END//

#UPDATE ESTILO
CREATE procedure UPDATE_ESTILO(pID INT, IN pDESCRIPCION varchar(45))
BEGIN
	UPDATE ESTILO
    SET descripcion = pDESCRIPCION
    WHERE id = pID;
END//

#UPDATE PAIS
CREATE procedure UPDATE_PAIS(pID INT, IN pNOMBRE varchar(45))
BEGIN
	UPDATE PAIS
    SET nombre = pNOMBRE
    WHERE id = pID;
END//

#UPDATE CATEFORIA PRINCIPAL
CREATE procedure UPDATE_CATEGORIA_PRINCIPAL(pID INT, IN pDESCRIPCION varchar(45))
BEGIN
	UPDATE CATEGORIAPRINCIPAL
    SET descripcion = pDESCRIPCION
    WHERE id = pID;
END//

#UPDATE SUBCATEGORIA
CREATE procedure UPDATE_SUBCATEGORIA(pID INT, IN pDESCRIPCION varchar(45))
BEGIN
	UPDATE SUBCATEGORIA
    SET descripcion = pDESCRIPCION
    WHERE id = pID;
END//

#UPDATE TIPO FERMENTACION
CREATE procedure UPDATE_TIPO_FERMENTACION(pID INT, IN pDESCRIPCION varchar(45))
BEGIN
	UPDATE tipofermentacion
    SET descripcion = pDESCRIPCION
    WHERE id = pID;
END//



#---------------------------------------------------------------------------------------------
#UPDATES TABLAS

#UPDATE CERVEZA
CREATE procedure UPDATE_CERVEZA(IN pNOMBRE varchar(45), IN pDESCRIPCION varchar(45), IN pTFERMENTACION INT, IN pTEMPERATURA INT, IN pPRECIO INT, IN pID_TIPOF INT, IN pID_COLOR INT, IN pID_ESTILO INT, IN pID_CUERPO INT)
BEGIN
	#INSERT INTO CERVEZA(nombre, descripcion, tiempoFermentacion, temperatura, precio, idTipoFermentacion, idColor, idEstilo, idCuerpo)
    #VALUES(pNOMBRE, pDESCRIPCION, pTFERMENTACION, pTEMPERATURA, pPRECIO, pID_TIPOF, pID_COLOR, pID_ESTILO, pID_CUERPO);
	#UPDATE USUARIO
    #SET 
    #WHERE idPersona = pID_PERSONA;
END//

#UPDATE PERSONA
CREATE procedure UPDATE_PERSONA(IN pNOMBRE varchar(45), IN pAPELLIDO varchar(45), IN pCEDULA varchar(45))
BEGIN
	#INSERT INTO PERSONA(nombre, apellido, cedula)
    #VALUES(pNOMBRE, pAPELLIDO, pCEDULA);
    #UPDATE PERSONA
    #SET 
    #WHERE idPersona = pID_PERSONA;
END//

/*
#UPDATE CXP
ANOMALIA DE BORRADO SI LO DEJO
CREATE procedure UPDATE_CXP(IN pID_PERSONA INT, IN pID_CERVEZA INT)
BEGIN
	INSERT INTO cervezasxpersona(idPersona, idCerveza)
    VALUES(pPERSONA, pCERVEZA);
END//
*/

#UPDATE CLIENTE
CREATE procedure UPDATE_CLIENTE(pID INT, IN pRUTAFOTO varchar(45), IN pDIRECCION varchar(45), IN pID_PERSONA INT, IN pID_ESTADO INT)
BEGIN
	#UPDATE USUARIO
    #SET 
    #WHERE idpersona = pID_PERSONA;
END//

/*
#UPDATE EMPLEADO
CREATE procedure UPDATE_EMPLEADO(IN pFECHAINGRESO date, IN pID_PERSONA INT)
BEGIN
	UPDATE USUARIO
    SET 
    WHERE idPersona = pID_PERSONA;
END//


#UPDATE USUARIO
SE ACTUALIZA?
CREATE procedure UPDATE_USUARIO(IN pNOMBRE varchar(45), IN pCONTRASENA varchar(45), IN pID_PERSONA INT)
BEGIN
	UPDATE USUARIO
    SET 
    WHERE idPersona = pID_PERSONA;
END//


#UPDATE BITACORA
CREATE procedure UPDATE_BITACORA(IN pPRECIOANTERIOR INT, IN pPRECIONUEVO INT, IN pIDCERVEZA INT)
BEGIN
	UPDATE USUARIO
    SET 
    WHERE idPersona = pID_PERSONA;
END//
*/

DELIMITER ;