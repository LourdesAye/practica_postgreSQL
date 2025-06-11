-- funcion que me devuelve un solo valor, no tabla o fila
CREATE OR REPLACE FUNCTION obtener_nombre_completo(id_user INTEGER)
RETURNS VARCHAR(300) AS $$
DECLARE
 nombre_completo VARCHAR(300);
BEGIN
 SELECT nombre||' '||apellido INTO nombre_completo
 FROM usuarios
 WHERE id_usuario=id_user;
 RETURN nombre_completo;
END;
$$ LANGUAGE plpgsql;

--probando funcionamiento
SELECT obtener_nombre_completo(1) as nombre_completo;