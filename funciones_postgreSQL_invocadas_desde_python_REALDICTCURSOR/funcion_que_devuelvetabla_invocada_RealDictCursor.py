from db_utils import ejecutar_select_devolviendo_lista_de_diccionarios

query="select * from obtener_usuarios_con_edad();"

resultados = ejecutar_select_devolviendo_lista_de_diccionarios(query)

print(resultados) # lista de diccionarios 
'''
[{'id': 1, 'nombre': 'Lourdes', 'edad': 32}, {'id': 2, 'nombre': 'Noelia', 'edad': 33}, {'id': 3, 'nombre': 'Monica', 'edad': 34}, {'id': 4, 'nombre': 'Olga', 'edad': 29}, {'id': 5, 'nombre': 'Pamela', 'edad': 42}]
'''
print()

for resultado in resultados:
    print (resultado)
'''
devuelve un diccionario por cada vez, o sea un elemento por cada fila que hace print:

{'id': 1, 'nombre': 'Lourdes', 'edad': 32}
{'id': 2, 'nombre': 'Noelia', 'edad': 33}
{'id': 3, 'nombre': 'Monica', 'edad': 34}
{'id': 4, 'nombre': 'Olga', 'edad': 29}
{'id': 5, 'nombre': 'Pamela', 'edad': 42}

'''
print()
for resultado in resultados: 
    print("el usuario : ", resultado['nombre'], " posee la edad de ",resultado['edad'],"años")
    # se tiene como clave el nombre de la columna de la tabla original y su valor el de la fila que se recorre

'''
el usuario :  Lourdes  posee la edad de  32 años
el usuario :  Noelia  posee la edad de  33 años
el usuario :  Monica  posee la edad de  34 años
el usuario :  Olga  posee la edad de  29 años
el usuario :  Pamela  posee la edad de  42 años
'''