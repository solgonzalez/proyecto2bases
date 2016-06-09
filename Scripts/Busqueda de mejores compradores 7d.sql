#lugares de donde vienen los mejores compradores
#los que compran mas cervezas
# 1 20 2 25 3 140 4 55  


SELECT C.ID ESTADO, E.NOMBRE, CXC.IDCLIENTE, CXC.IDCERVEZA, SUM(CXC.CANTIDAD) AS TOTAL
FROM CERVEZAXCLIENTE CXC INNER JOIN CLIENTE C INNER JOIN ESTADO E
GROUP BY CXC.IDCLIENTE
ORDER BY TOTAL DESC

SELECT * FROM CLIENTE;

/*
SELECT D.DEPARTMENT_ID, D.DEPARTMENT_NAME, count(1) AS TOTAL
FROM EMPLOYEE E INNER JOIN DEPARTMENT D
ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
GROUP BY D.DEPARTMENT_ID, D.DEPARTMENT_NAME;
*/