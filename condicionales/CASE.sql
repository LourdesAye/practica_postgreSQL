--CASE : se ejecuta cierto código dependiendo de si se cumple cierta condición 
-- seleccionar el tipo de ocupación y una nueva columna denominada inicial
-- con la letra incial del campo tipo de ocupacion de la tabla ocupaciones

-- resolución usando case, como pide el curso
select tipo_ocupacion,
 CASE tipo_ocupacion
  WHEN 'Administrativo' THEN 'A'
  WHEN 'Programador' THEN 'P'
  ELSE '?'
 END as incial
 FROM ocupaciones


--OTRA FORMA
-- devuelve la incial de cada fila de esa columna
-- SELECT LEFT(nombre, 1) AS inicial
-- FROM usuarios;

-- devuelve las dos primeras letras de cada nombre
-- SELECT LEFT(nombre, 2) AS inicial
-- FROM usuarios;
