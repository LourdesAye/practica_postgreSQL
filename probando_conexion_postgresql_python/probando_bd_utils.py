from db_utils import ejecutar_select, ejecutar_modificacion

# probando SELECT sin parametros
query = "SELECT * FROM productos;"
resultados = ejecutar_select(query)

for fila in resultados:
    print(fila)

# probando SELECT con parametros
query = "SELECT * FROM productos WHERE nombre = %s;"
params = ("Raton",) # aca se debe poner una coma para interpretar que es una tupla, 
# caso contrario se considera un caracter y eso no es valido, espera una tupla con elementos o una tupla vacia

resultados = ejecutar_select(query, params)

for fila in resultados:
    print(fila)

# lo IMPORTANTE A NOTAS: cuando se usa query, pueden ser cadena de caracteres y dentro de ella haber 
# placeholders %s → como espacios vacíos.
# El motor de base de datos se encarga de interpretar cada dato como texto, número, etc., 
# sin ejecutarlo como código. Es mucho más seguro. Y no se colocan como texto directamente porque es poco seguro. 

query = "INSERT INTO productos (nombre, precio) VALUES (%s, %s);"
ejecutar_modificacion(query, ("Teclado", 70))