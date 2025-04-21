# plantilla base simple, modular y reutilizable, 
# como punto de partida para interactuar con tu base de datos PostgreSQL 
# desde Python.

import psycopg # importar biblioteca necesaria para interacción postgreSQL con python

# Configuración de conexión, que se modifica según el ambiente
# es un diccionario donde esta el par clave-valor 
# se definía un diccionario = {clave: valor} y para acceder al valor se hacia diccionario[clave]
DB_CONFIG = {
    "dbname": "ventas", # clave: dbname → valor: "practica2"
    "user": "postgres",  # clave: user → valor: "postgres"
    "password": "0909casajardinpaz0707",
    "host": "localhost",
    "port": "5432"
}

# Función para conectar a la base
def conectar():
    return psycopg.connect(**DB_CONFIG) # es asi siempre

'''
el doble asterisco ** hace esto : 
psycopg.connect(
    dbname=DB_CONFIG["dbname"],
    user=DB_CONFIG["user"],
    password=DB_CONFIG["password"],
    host=DB_CONFIG["host"],
    port=DB_CONFIG["port"]
)

es decir queda:

psycopg.connect(
    dbname="practica2",
    user="postgres",
    password="0909casajardinpaz0707",
    host="localhost",
    port="5432"
)

el doble asterisco **  "desempaqueta" el diccionario en los argumentos que espera la función
'''

# Función para ejecutar SELECT y devolver resultados
def ejecutar_select(query, params=None):
    conn = conectar() # Se conecta a la base de datos
    cur = conn.cursor() # Crea un cursor para ejecutar consultas
    cur.execute(query, params or ())  
    # Ejecuta el query con parámetros si hay, si no, con tupla vacía
    # si params viene como None, entonces pasa una tupla vacía. 
    # Esto es útil para que cur.execute() no falle aunque no le pasemos parámetros.
    resultados = cur.fetchall()  # Trae todos los resultados
    cur.close() # Cierra cursor
    conn.close()  # Cierra conexión
    return resultados # Devuelve los resultados

# lo IMPORTANTE A NOTAS: cuando se usa query, pueden ser cadena de caracteres y dentro de ella haber 
# placeholders %s → como espacios vacíos.
# El motor de base de datos se encarga de interpretar cada dato como texto, número, etc., 
# sin ejecutarlo como código. Es mucho más seguro. Y no se colocan como texto directamente porque es poco seguro. 

# ✏️ Función para ejecutar INSERT, UPDATE o DELETE
def ejecutar_modificacion(query, params=None):
    conn = conectar() # Se conecta a la base de datos
    cur = conn.cursor() # Crea un cursor para ejecutar consultas
    cur.execute(query, params or ()) 
    # Ejecuta el query con parámetros si hay, si no, con tupla vacía
    # si params viene como None, entonces pasa una tupla vacía. 
    # Esto es útil para que cur.execute() no falle aunque no le pasemos parámetros.
    conn.commit() # confirmación de cambios
    cur.close() # Cierra cursor
    conn.close() # Cierra conexión