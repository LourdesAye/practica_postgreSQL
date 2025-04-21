-- actualizar los correos electronicos de Antonio y Juan

UPDATE  usuarios
SET mail='antonioperez@mail.com'
WHERE id_usuario=1 ;

UPDATE usuarios
SET mail='juangonzalez@mail.com'
WHERE id_usuario=2
-- RETURNING nombre,apellido1,mail 
-- una vez que aplica los cambios usa RETURNING para mostrarlos (forma de validar lo que se cambió)  

-- otra forma en que valido actualizaciones con: 
-- select * from usuarios

