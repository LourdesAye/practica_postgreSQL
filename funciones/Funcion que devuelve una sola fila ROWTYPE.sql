-- Función que devuelve una sola fila
CREATE OR REPLACE FUNCTION buscar_usuario(id_user INT)
RETURNS usuarios AS $$
DECLARE 
 resultado usuarios%ROWTYPE;
BEGIN
 SELECT * INTO resultado FROM usuarios WHERE id_usuario=id_user;
 RETURN resultado;
END;
$$ LANGUAGE plpgsql;

--consultar
select * from buscar_usuario(2);
 