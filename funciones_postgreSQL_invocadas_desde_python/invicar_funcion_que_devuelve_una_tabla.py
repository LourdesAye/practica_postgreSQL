from db_utils import ejecutar_select, ejecutar_modificacion

#probando un select que invoca a una funcion que no recibe parametros y que devuelve una tabla
query = "SELECT * from obtener_usuarios_con_edad();" #esto ok
resultados = ejecutar_select(query) # lista de tuplas. la lista sería la tabla completa. la tu´pla una fila. cada componenete de la tupla: un valor de ese campo.

#como no hay parametros no se define param
for fila in resultados: # resultados es una lista de tuplas, fila es una tupla
    print(fila) # devuelve una tupla cada vez 
    '''
(1, 'Lourdes', 32)
(2, 'Noelia', 33)
(3, 'Monica', 34)
(4, 'Olga', 29)
(5, 'Pamela', 42)
    '''
    print("el id de usuario es: " , fila[0], ", el nombre: ", fila[1], " y el apellido: ", fila[2])

'''
el id de usuario es:  1 , el nombre:  Lourdes  y el apellido:  32
el id de usuario es:  2 , el nombre:  Noelia  y el apellido:  33
el id de usuario es:  3 , el nombre:  Monica  y el apellido:  34
el id de usuario es:  4 , el nombre:  Olga  y el apellido:  29
el id de usuario es:  5 , el nombre:  Pamela  y el apellido:  42
'''

