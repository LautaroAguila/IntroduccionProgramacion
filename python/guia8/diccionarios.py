def contar_letras_de_palabras_de_una_frase(palabra: str) -> list:
    lista = []
    lista_cont = []
    cont = 0
    for l in range(0, len(palabra),1):
        if palabra[l] != ' ' and palabra[l] != '\n':
            cont += 1
        else:
            cont = 0
        lista_cont += [cont]
    for i in range (0,len(lista_cont),1):
        if lista_cont[i] == 0:
            lista += [lista_cont[i-1]]
        
    return lista
def cuantas_veces_pertenece(numero:int, lista: list) -> int:
    cont: int = 0
    for i in lista:
        if numero == i:
            cont += 1
    return cont
def agrupar_por_longitud(archivo : str) -> dict:
    arch = open(archivo, 'r')
    frases = arch.readlines()
    palabras: list = []
    for i in frases:
        palabras += contar_letras_de_palabras_de_una_frase(i)
    diccionario = {}
    for i in palabras:
        diccionario[i] = cuantas_veces_pertenece(i, palabras)
    print(diccionario)
#agrupar_por_longitud("C:\\Users\\lauta\\OneDrive\\Escritorio\\IntroduccionProgramacion\\python\\archivos\\archivo1.txt")
import csv
def calcular_promedio_por_estudiante(archivo_notas : str) -> dict[str, float]:
    arch = open(archivo_notas, 'r')
    lista_notas : list = csv.reader(arch)
    lista_lu: list = []
    lista_nota: dict = []
    diccionario_cant_materias: dict = {}
    diccio = {}
    for alumno in lista_notas:
        lu = alumno[0]
        nota = float(alumno[3])
        if lu in diccio:
            diccio[lu] += nota
            diccionario_cant_materias[lu] += 1
        else:
            diccio[lu] = nota
            diccionario_cant_materias[lu] = 1
    promedios ={}
    for i in diccio:
        promedios[i] = diccio[i] / diccionario_cant_materias[i] 
    return print(promedios)
#calcular_promedio_por_estudiante("C:\\Users\\lauta\\OneDrive\\Escritorio\\IntroduccionProgramacion\\python\\archivos\\archivo_notas.csv")
def la_palabra_mas_frecuente(archivo2 : str) -> str:
    arch = open(archivo2, 'r')
    lista_arch = arch.readlines()
    palabra = ""
    palabras = []
    for f in lista_arch:
        for l in f:
            if l != ' ' and l != '\n':
                palabra += l
            elif l == ' ' or l == '\n':
                palabras += [palabra]
                palabra = ""
    palabras_limpias = [] 
    for i in palabras:
        if i != '':
            palabras_limpias += [i]
    diccionario_palabras = {}
    for p in palabras_limpias:
        diccionario_palabras[p] = cuantas_veces_pertenece(p, palabras_limpias)
    items = []
    for item in (diccionario_palabras.items()):
        items += [(item)]
    mayor = items[0][1]
    palabra_mayor = items[0][0]
    for k in range(len(items)):
        if mayor <= items[k][1]:
            mayor = items[k][1]
            palabra_mayor = items[k][0]
    return print("Palabra que mas aparece: ",palabra_mayor,", aparece: ",mayor, " veces.")
#la_palabra_mas_frecuente("C:\\Users\\lauta\\OneDrive\\Escritorio\\IntroduccionProgramacion\\python\\archivos\\archivo2.txt")
from queue import LifoQueue as Pila
historial = {}
sitios = []
def visitar_sitio(historiales:dict[str, Pila[str]], usuario:str, sitio:str) -> None:
    sitios.append((usuario, sitio))
    pila_sitios = Pila()
    for usr in sitios:
        if usr[0] == usuario:
            pila_sitios.put(usr[1])
    historial[usuario] = pila_sitios
    while pila_sitios.empty() == False:
        print(pila_sitios.get())
#visitar_sitio(historial, "Juanseto03", "Twitch.com")
#visitar_sitio(historial, "Juanseto03", "YouTube.com")
#visitar_sitio(historial, "Juanseto03", "Insta.com")
#print("-------------------------------------------")
#visitar_sitio(historial, "juanchi", "da.com")
#visitar_sitio(historial, "juanchi", "s.com")
#visitar_sitio(historial, "juanchi", "w.com")
#print("-------------------------------------------")
def navegar_atras(historiales: dict[str, Pila[str]],usuario:str) -> None:
    pila_sitios = Pila()
    for usr in sitios:
        if usr[0] == usuario:
            pila_sitios.put(usr[1])
    primero = pila_sitios.get()
    segundo = pila_sitios.get()
    pila_sitios.put(primero)
    pila_sitios.put(segundo)
    historial[usuario] = pila_sitios
    while pila_sitios.empty() == False:
        print(pila_sitios.get())
#navegar_atras(historial, "Juanseto03")
#print("-.-")
#navegar_atras(historial, "juanchi")
inventario = {}
def agregar_producto(inventario: dict, nombre: str, precio: float, cantidad: int) -> None:
    info = {}
    info["Precio"] = precio
    info["Cantidad"] = cantidad    
    inventario[nombre] = info
def actualizar_stock(inventario: dict, nombre: str, cantidad: int) -> None:
    inventario[nombre]["Cantidad"] = cantidad
def actualizar_precios(inventario: dict, nombre: str, precio: float) -> None:
    inventario[nombre]["Precio"] = precio
def calcular_valor_inventario(inventario: dict) -> float:
    suma: float = 0
    for item in inventario:
        suma += inventario[item]["Precio"] * inventario[item]["Cantidad"]
    return suma
agregar_producto(inventario, "Camisa", 20.0, 50)
agregar_producto(inventario, "Pantalon", 30.0, 30)
actualizar_stock(inventario, "Camisa", 10)
valor_total = calcular_valor_inventario(inventario)
print("Valor total del inventario:", valor_total)