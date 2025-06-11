# Curso PostgreSQL – Prácticas y Conexiones con Python

Este repositorio contiene materiales del curso de PostgreSQL y prácticas personales, incluyendo:

- Backups de las bases utilizadas.
- Consultas y ejercicios prácticos.
- Conexiones desde Python para invocar funciones SQL.
- Uso de bases externas como Pagila para pruebas.

## Estructura del repositorio

- `backups/`: Contiene archivos `.tar` y `.sql` para restaurar bases en pgAdmin.
- `con_python/`: Scripts en Python para conectarse a PostgreSQL, ejecutar funciones y consultas.
- `datasets_externos/`: Bases de datos externas utilizadas para pruebas (ej. Pagila).
- `ejercicios/`: Consultas prácticas con SELECTs, VISTAS, JOINS y más.
- `funciones/`: Funciones definidas en SQL y probadas en bases locales.

## Restaurar un backup en pgAdmin

1. Abrí pgAdmin.
2. Creá una nueva base de datos vacía.
3. Clic derecho sobre la base → **Restore**.
4. Seleccioná el archivo `.tar` desde la carpeta `backups/`.
5. Presioná **Restore** y listo.

## Autor

**Lourdes**  
Estudiante de Ingeniería en Sistemas de Información – UTN FRBA  
Este repositorio forma parte de mi portfolio personal y puede servir como referencia para estudiantes o autodidactas aprendiendo PostgreSQL y su integración con Python.
