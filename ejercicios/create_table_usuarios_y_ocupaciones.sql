CREATE TABLE usuarios(
 id_usuario SERIAL PRIMARY KEY,
 nombre VARCHAR(100) NOT NULL,
 apellido1 VARCHAR(100) NOT NULL,
 apellido2 VARCHAR(100) NOT NULL,
 contraseña VARCHAR(100) NOT NULL,
 mail VARCHAR(200) NOT NULL, 
 fecha_creacion TIMESTAMP NOT NULL
);

CREATE TABLE ocupaciones(
 id_ocupacion SERIAL PRIMARY KEY,
 tipo_ocupacion VARCHAR(100) NOT NULL,
 descripcion VARCHAR(300) NOT NULL
)