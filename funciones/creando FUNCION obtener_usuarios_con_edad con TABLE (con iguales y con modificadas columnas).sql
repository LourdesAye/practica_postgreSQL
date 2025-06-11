-- funcion que devuelve una tabla con algunos campos iguales o modificados
CREATE OR REPLACE FUNCTION obtener_usuarios_con_edad()
RETURNS TABLE(id INTEGER, nombre varchar(200), edad INTEGER) AS $$
BEGIN
 RETURN QUERY SELECT 
 U.id_usuario,
 U.nombre,
 EXTRACT(YEAR FROM AGE(NOW(), U.fecha_nacimiento))::INTEGER 
 FROM usuarios U;
END
$$ LANGUAGE plpgsql;

select * from obtener_usuarios_con_edad();