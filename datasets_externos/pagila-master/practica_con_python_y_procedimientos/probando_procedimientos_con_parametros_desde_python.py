#se controla transacción con commit y rollback
import psycopg

# Conectamos (sin autocommit para controlar la transacción)
conn = psycopg.connect("dbname=pagila user=postgres password=tu_contra", autocommit=False)
cur = conn.cursor()
# Usás %s como placeholder para los parámetros.
try:
    # Llamada al procedimiento con parámetros
    cur.execute("CALL insertar_cliente_param(%s, %s,%s)", ("LOU", "Gomez","lif@life.com")) 
    #El segundo argumento de execute es una tupla con los valores.
    conn.commit() # usamos commit() solo si todo sale bien. Si hay un error, usamos rollback().
    print("Cliente insertado correctamente.")
except Exception as e:
    conn.rollback()
    print("Ocurrió un error:", e)
finally:
    cur.close()
    conn.close()