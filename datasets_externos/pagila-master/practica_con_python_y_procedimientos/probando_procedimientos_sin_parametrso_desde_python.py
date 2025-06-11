#se controla transacción con commit y rollback
from psycopg import connect

try:
    with connect("dbname=pagila user=postgres password=0909casajardinpaz0707", autocommit=False) as conn:
        with conn.cursor() as cur:
            cur.execute("CALL insertar_cliente_tests()")  # Puede fallar
        conn.commit()  # Si todo salió bien ,  para grabar cambios
        print("Todo salió bien")
except Exception as e:
    conn.rollback()   # Cancela todos los cambios si hubo error . Si no querés grabarlos (porque falló algo o estás probando)
    print("Ocurrió un error:", e)