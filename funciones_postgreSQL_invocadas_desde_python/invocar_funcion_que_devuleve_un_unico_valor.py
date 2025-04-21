from db_utils import ejecutar_select, ejecutar_modificacion

# probando SELECT que invoca una funcion que devuelve un solo valor
#query = "SELECT obtener_nombre_completo(%s::INTEGER);" este ok
query = "SELECT obtener_nombre_completo(%s);" #esto ok
params = (1,) # aca se debe poner una coma para interpretar que es una tupla, 
# caso contrario se considera un caracter y eso no es valido, espera una tupla con elementos o una tupla vacia
# params=("1",) este tambien ok 

resultados = ejecutar_select(query, params)

for fila in resultados:
    print(fila)

# lo IMPORTANTE A NOTAS: cuando se usa query, pueden ser cadena de caracteres y dentro de ella haber 
# placeholders %s → como espacios vacíos.
# El motor de base de datos se encarga de interpretar cada dato como texto, número, etc., 
# sin ejecutarlo como código. Es mucho más seguro. Y no se colocan como texto directamente porque es poco seguro. 