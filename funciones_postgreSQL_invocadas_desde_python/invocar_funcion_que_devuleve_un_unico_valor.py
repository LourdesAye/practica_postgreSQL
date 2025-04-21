from db_utils import ejecutar_select, ejecutar_modificacion

# probando SELECT que invoca una funcion que recibe un parametro y que devuelve un solo valor

#query = "SELECT obtener_nombre_completo(%s::INTEGER);" este tambien sirve
query = "SELECT obtener_nombre_completo(%s);" #este tambien sirve

params = (1,) # aca se debe poner una coma para interpretar que es una tupla, sino se considera un caracter y eso no es valido, espera una tupla con elementos o una tupla vacia
# params=("1",) este tambien sirve 

resultados = ejecutar_select(query, params) # me devuelve una lista de tuplas

for fila in resultados: # fila es una tupla
    print(fila) # me devuelve una tupla ('Lourdes Gomez',)
    print(fila[0]) # me devuelve el contenido de la tupla :  Lourdes Gomez
    print(fila[0][5]) # por ser cadena de caracteres me devuelve el elemento en pos 5: e

# cuando se usa query, pueden ser cadena de caracteres y dentro de ella haber 
# placeholders %s → como espacios vacíos.
# El motor de base de datos se encarga de interpretar cada dato como texto, número, etc., 
# sin ejecutarlo como código. Es mucho más seguro. Y no se colocan como texto directamente porque es poco seguro. 



