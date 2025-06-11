CREATE TABLE usuarios_ocupaciones(
  id_usuario INTEGER REFERENCES usuarios(id_usuario),
  id_ocupacion INTEGER REFERENCES ocupaciones(id_ocupacion)
)