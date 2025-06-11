-- MOSTRAR DEP Y LOS DEPARTAMENTO DE LA TABLA DEPARTAMENTOS
-- PARA LOS DEPARTAMENTOS QUE TENGAN PERSONAS CUYA EDAD SEA MAYOR A 30 Y MENOR A 50

--SELECT * FROM "esquema"."DEPARTAMENTOS" D
SELECT D."DEP", D."DEPARTAMENTO" -- se prefiere por claridad a que la fila anterior
FROM "esquema"."DEPARTAMENTOS" D
WHERE EXISTS (
SELECT 1 -- No me importa qué datos hay dentro de la subconsulta, solo me importa que haya al menos una fila que cumpla la condición
FROM "esquema"."PERSONAS" P
WHERE P."EDAD" between 30 and 50 
and P."DEP"=D."DEP" 
)

-- “De la tabla DEPARTAMENTOS, quiero todos los que tengan al menos una persona de entre 30 y 50 años asociada”