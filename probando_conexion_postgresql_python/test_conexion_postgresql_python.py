import psycopg

# Conexión a la base 
# Los datos: Todo depende de dónde esté instalada la base de datos y qué credenciales te dé ese servidor.
conn = psycopg.connect(
    dbname= "practica2", # nombre de bdd
    user="postgres", # usuario de bdd. si no lo sabe en postgresql ejecutra:  SELECT current_user;
    password="0909casajardinpaz0707", # la que pide postgresql para hacer consultas cuando ingresa a pgadmin
    host="localhost", # depende dónde este instalada la bdd 
    # host="192.168.10.40" si es una IP en la red
    # host="botchat.utn.edu.ar" si tiene un dominio
    port="5432"
)

# Crear cursor y ejecutar una consulta
cur = conn.cursor()  # cursor es como un puntero o canal de comunicación entre Python y la base de datos. Le decís: “voy a enviarte una consulta o un comando”.
cur.execute("SELECT * FROM  productos;") # .execute() sirve para ejecutar cualquier instrucción SQL
rows = cur.fetchall() #solo se usa cuando hacés un SELECT, porque devuelve todos los registros que vinieron como respuesta.

# fetchone() → te trae un solo registro
# fetchmany(n) → te trae n registros

# Mostrar resultados
for row in rows:
    print(row)

# Cerrar todo
cur.close() #  cierra el cursor, ya no podés hacer más execute()
conn.close() # cierra la conexión con la base, libera recursos
