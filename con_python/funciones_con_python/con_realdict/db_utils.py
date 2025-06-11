# plantilla base simple, modular y reutilizable, 
# como punto de partida para interactuar con tu base de datos PostgreSQL 
# desde Python.

import psycopg # importar biblioteca necesaria para interacción postgreSQL con python
from psycopg.rows import dict_row # para que convierta cada fila en un diccionario

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
    return psycopg.connect(**DB_CONFIG,row_factory=dict_row) # le avisamos que cada fila es un diccionario con dict_row

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


def ejecutar_select_devolviendo_lista_de_diccionarios(query, params=None):
    conn = conectar() # Se conecta a la base de datos
    cur = conn.cursor() # Crea un cursor para ejecutar consultas
    cur.execute(query, params or ())  # Ejecuta el query con parámetros si hay, si no, con tupla vacía. Esto es útil para que cur.execute() no falle aunque no le pasemos parámetros.
    resultados = cur.fetchall()  # cada fila ya es un dict, no hace falta usar .as_dict()
    cur.close() # Cierra cursor
    conn.close()  # Cierra conexión
    return resultados # Devuelve los resultados