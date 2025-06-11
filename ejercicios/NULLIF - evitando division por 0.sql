-- Ejercicio : crear tabla, insertar filas , calcular ratio, eliminar fila, clacular ratio usando NULLIF
-- Crear la tabla departamentos con las columnas
    -- id_departamento SERIAL
    -- nombre VARCHAR(50)
	-- departamento VARCHAR(50)

/*
CREATE TABLE departamentos(
   id_departamento SERIAL PRIMARY KEY,
   nombre_empleado VARCHAR(50),
   nombre_departamento VARCHAR(50)
);
*/

-- validar que la tabla existe
--select * from departamentos

--Insertar 3 elemnetos en la tabla departamentos
  -- nombre : 'Antonio', departamento = 'A'
  -- nombre : 'Juan', departamento = 'B'
  -- nombre : 'Maria', departamento = 'A'

/*
INSERT INTO departamentos(nombre_empleado,nombre_departamento)
VALUES ('Antonio','A'),('Juan','B'),('Maria','A');
*/

-- validar carga de datos a la tabla departamentos
-- select * from departamentos

-- Calcular el ratio de empleados del departamento 'A' respecto del departamento 'B'

/*
SELECT
(
SUM(CASE WHEN nombre_departamento='A' THEN 1 ELSE 0 END)/ -- HAY DOS EMPLEADOS EN EL DEPARTAMENTO A
SUM(CASE WHEN nombre_departamento='B' THEN 1 ELSE 0 END) -- HAY DOS EMPLEADOS EN EL DEPARTAMENTO B
) as resultado_ratio_A_sobre_B
FROM departamentos 
*/

-- VUELVO A VER LA TABLA y su contenido
-- select * from departamentos

-- Eliminar el empleado del departamento 'B'
/*
delete from departamentos
where nombre_departamento='B'
*/

-- verificar si la tabla quedó sin personas en el departamento B
-- select * from departamentos

-- volver a calcular el ratio de empleados del departamento 'A' resprecto al 'B'
-- utilizando NULLIF para evitar el error de división entre 0

-- esto da error porque ya no hay personas en el departamento B y divide por 0

/*
SELECT
(
SUM( CASE WHEN nombre_departamento='A' THEN 1 ELSE 0 end)/
SUM( CASE WHEN nombre_departamento='B' THEN 1 ELSE 0 END)
) as resultado_ratio_A_sobre_B
FROM departamentos -- ERROR:  división por cero
*/

-- para que eso no pase se usa NULLIF

SELECT
(
SUM( CASE WHEN nombre_departamento='A' THEN 1 ELSE 0 END)/
NULLIF(SUM( CASE WHEN nombre_departamento='B' THEN 1 ELSE 0 END) , 0) -- SI la suma da 0, con el cero de al lado da NULL 
-- si bien queda en null se evita el error por 0
) as resultado_ratio_A_sobre_B
FROM departamentos 
