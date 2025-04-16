import psycopg

# Conexión a la base
conn = psycopg.connect(
    dbname= "practica2",
    user="postgres",
    password="0909casajardinpaz0707",
    host="localhost",
    port="5432"
)

# Crear cursor 
cur = conn.cursor()

# Crear tabla si no existe
cur.execute("""
    CREATE TABLE IF NOT EXISTS personas (
        id SERIAL PRIMARY KEY,
        nombre TEXT NOT NULL,
        edad INT
    );
""")

# por qué comillas dobles 3 veces en create y 1 en select -> no depende de instruccion
#depende de la cantidad de lineas de la consulta y manejo de strings en python
# comillas dobles normales o incluso comillas simples porque la consulta entra en una sola línea
# tres comillas dobles o simples porque la consulta ocupa varias líneas.


# Insertar múltiples registros correctamente
# executemany() → Para una consulta que se repite con varios datos diferentes.
cur.executemany("""
    INSERT INTO personas (nombre, edad) VALUES (%s, %s)
""", [("Lourdes", 32), ("Ayelen", 32)])

'''
execute() → Para una sola consulta con un solo conjunto de datos.
# Insertar un registro de prueba
cur.execute("""
    INSERT INTO personas (nombre, edad) VALUES (%s, %s)
""", ("Lourdes", 32))

FALLA SI SE PONEN ("Lourdes", 32),("Ayelen",32) porque esperaba dos y no 4
cur.execute("""
    INSERT INTO personas (nombre, edad) VALUES (%s, %s)
""", ("Lourdes", 32),("Ayelen",32))
'''

# Ver los datos
cur.execute("SELECT * FROM personas;")
resultados = cur.fetchall()

print("📋 Datos en la tabla alumnos:")
for fila in resultados:
    print(fila)

# Confirmar cambios
conn.commit() # cuando hacés cambios en la base de datos (INSERT, UPDATE o DELETE), los cambios no se aplican hasta que hacés commit().
cur.close() #  cierra el cursor, ya no podés hacer más execute()
conn.close() # cierra la conexión con la base, libera recursos