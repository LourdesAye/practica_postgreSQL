--cree base de datos ventas
-- ahora creando tabla usuarios
CREATE TABLE usuarios(
 id_usuario SERIAL PRIMARY KEY,
 nombre varchar(200) NOT NULL,
 apellido varchar(200) NOT NULL,
 fecha_nacimiento timestamp
);

-- se agregan usuarios a la tabla
INSERT INTO usuarios(nombre,apellido,fecha_nacimiento)
VALUES ('Lourdes','Gomez','1992-12-16'), 
('Noelia','Hernandez','1991-11-15'),
('Monica','Lombardi','1990-10-18'),
('Olga','Perez','1995-09-16'),
('Pamela','Martínez','1983-02-25'); 