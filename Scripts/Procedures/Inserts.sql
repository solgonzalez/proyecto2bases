#FECHA: 6 JUNIO 2016
#AUTOR: MARIELA BARRANTES
#DESCRIPCION: STORED PROCEDURE - INSERTS

DELIMITER //

#INSERTS CATALOGOS
#INSERT COLOR
CREATE procedure INSERT_COLOR(IN pDESCRIPCION varchar(200))
BEGIN
	INSERT INTO COLOR(descripcion)
    VALUES(pDESCRIPCION);
END//

#INSERT CUERPO
CREATE procedure INSERT_CUERPO(IN pDESCRIPCION varchar(45))
BEGIN
	INSERT INTO CUERPO(descripcion)
    VALUES(pDESCRIPCION);
END//

#INSERT ESTADO
CREATE procedure INSERT_ESTADO(IN pNOMBRE varchar(45), IN pIDPAIS INT)
BEGIN
	INSERT INTO ESTADO(nombre, idPais)
    VALUES(pNOMBRE, pIDPAIS);
END//

#INSERT ESTILO
CREATE procedure INSERT_ESTILO(IN pDESCRIPCION varchar(45))
BEGIN
	INSERT INTO ESTILO(descripcion)
    VALUES(pDESCRIPCION);
END//

#INSERT PAIS
CREATE procedure INSERT_PAIS(IN pNOMBRE varchar(45))
BEGIN
	INSERT INTO PAIS(nombre)
    VALUES(pNOMBRE);
END//

#INSERT CATEFORIAPRINCIPAL
CREATE procedure INSERT_CATEGORIA_PRINCIPAL(IN pDESCRIPCION varchar(45))
BEGIN
	INSERT INTO categoriaprincipal(descripcion)
    VALUES(pDESCRIPCION);
END//

#INSERT SUBCATEGORIA
CREATE procedure INSERT_SUBCATEGORIA(IN pDESCRIPCION varchar(45), IN pIDCAT_PRINCIPAL INT)
BEGIN
	INSERT INTO SUBCATEGORIA(descripcion, idCategoriaPrincipal)
    VALUES(pDESCRIPCION, pIDCAT_PRINCIPAL);
END//

#INSERT TIPO FERMENTACION
CREATE procedure INSERT_TIPO_FERMENTACION(IN pDESCRIPCION varchar(45))
BEGIN
	INSERT INTO TIPOFERMENTACION(descripcion)
    VALUES(pDESCRIPCION);
END//



#---------------------------------------------------------------------------------------------
#INSERTS TABLAS

#INSERT CERVEZA
CREATE procedure INSERT_CERVEZA(IN pNOMBRE varchar(45), IN pDESCRIPCION varchar(45), IN pTFERMENTACION INT, IN pTEMPERATURA INT, IN pPRECIO INT, IN pID_TIPOF INT, IN pID_COLOR INT, IN pID_ESTILO INT, IN pID_CUERPO INT)
BEGIN
	INSERT INTO CERVEZA(nombre, descripcion, tiempoFermentacion, temperatura, precio, idTipoFermentacion, idColor, idEstilo, idCuerpo)
    VALUES(pNOMBRE, pDESCRIPCION, pTFERMENTACION, pTEMPERATURA, pPRECIO, pID_TIPOF, pID_COLOR, pID_ESTILO, pID_CUERPO);
END//

#INSERT PERSONA
CREATE procedure INSERT_PERSONA(IN pNOMBRE varchar(45), IN pAPELLIDO varchar(45), IN pCEDULA varchar(45))
BEGIN
	INSERT INTO PERSONA(nombre, apellido, cedula)
    VALUES(pNOMBRE, pAPELLIDO, pCEDULA);
END//

#INSERT CXP
CREATE procedure INSERT_CXP(IN pID_PERSONA INT, IN pID_CERVEZA INT)
BEGIN
	INSERT INTO cervezasxpersona(idPersona, idCerveza)
    VALUES(pPERSONA, pCERVEZA);
END//

#INSERT CLIENTE
CREATE procedure INSERT_CLIENTE(IN pRUTAFOTO varchar(45), IN pDIRECCION varchar(45), IN pID_PERSONA INT, IN pID_ESTADO INT)
BEGIN
	INSERT INTO CLIENTE(rutaFoto, direccionEspecifica, idPersona, idEstado)
    VALUES(pRUTAFOTO, pDIRECCION, pID_PERSONA, pID_ESTADO);
END//

#INSERT EMPLEADO
CREATE procedure INSERT_EMPLEADO(IN pFECHAINGRESO date, IN pID_PERSONA INT)
BEGIN
	INSERT INTO EMPLEADO(fechaIngreso, idPersona)
    VALUES(pFECHAINGRESO, pID_PERSONA);
END//

#INSERT USUARIO
CREATE procedure INSERT_USUARIO(IN pNOMBRE varchar(45), IN pCONTRASENA varchar(45), IN pID_PERSONA INT)
BEGIN
	INSERT INTO USUARIO(nombreUsuario, contrasena, idPersona)
    VALUES(pNOMBRE, pCONTRASENA, pID_PERSONA);
END//

#INSERT BITACORA
CREATE procedure INSERT_BITACORA(IN pPRECIOANTERIOR INT, IN pPRECIONUEVO INT, IN pIDCERVEZA INT)
BEGIN
	INSERT INTO BITACORA(precioAnterior, nuevoPrecio, idCerveza)
    VALUES(pPRECIOANTERIOR, pPRECIONUEVO, pIDCERVEZA);
END//

DELIMITER ;