-- ejercicio
-- consultar todos los productos que estén presentes en la tabla PEDIDOS, sin repetirlos

-- EVITA VALORES REPETIDOS DE UNA COLUMNA
-- SELECT * FROM "esquema"."PEDIDOS"
-- SELECT DISTINCT "PRODUCTO" FROM "esquema"."PEDIDOS"

-- MUESTRA COMBINACION ÚNICA DE NOMBRE Y APELLIDO1 (SI COMBINACIÓN se repite no se muetsrac)
SELECT DISTINCT "NOMBRE","APELLIDO2" FROM "esquema"."PERSONAS"
