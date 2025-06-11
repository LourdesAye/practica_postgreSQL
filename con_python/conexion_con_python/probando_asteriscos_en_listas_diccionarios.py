# uso de doble asterisco
def saludar(nombre, edad):
    print(f"Hola {nombre}, tenés {edad} años.")

datos = {"nombre": "Lourdes", "edad": 25}

saludar(**datos)
# Salida: Hola Lourdes, tenés 25 años.

'''
**datos
hace esto:
print(f"Hola datos["nombre"], tenés datos[edad] años.") 
-> toma el diccionario , toma los parametros del diccionario que serian las claves, para acceder al valor 
print(f"Hola Lourdes, tenés 25 años.")
'''

# uso de asterisco simple
# se usa para desempaquetar listas o tuplas (posicionales).
def sumar(a, b, c):
    return a + b + c

numeros = [1, 2, 3]

resultado = sumar(*numeros)
print(resultado)  # → 6

# internamente hace: 
# sumar(1, 2, 3)