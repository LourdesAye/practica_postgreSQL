-- crear funcion que devuelve todos los campos de la tabla, pero solo algunas filas 
-- hay filtrado por condicion
CREATE OR REPLACE FUNCTION usuarios_con_letra(letra CHAR)
RETURNS SETOF usuarios AS $$ 
BEGIN
 RETURN QUERY SELECT * FROM usuarios WHERE nombre ILIKE letra||'%';
END;
$$LANGUAGE plpgsql;

--verificar si funciona
select * from usuarios_con_letra('L'); 