import random
import numpy as np
np.__version__
print("------1------")
def pertenece (x: int, lista: list) -> bool:
    m: bool = False
    for i in range(0,len(lista),1):
        if x == lista[i]:
            m = True
    return m

print(pertenece(1,[1,2,3,4]))
print(pertenece(1,[2,3,4,1]))
print(pertenece(1,[2,3,4]))
print(pertenece(1,[2,1,3,4]))
print("------2------")

def divide_a_todos (x: int, lista: list) -> bool:
    m: bool = False
    for i in range (0,len(lista),1):
        if (lista[i] % x) == 0:
            m = True
        else:
            m = False
            return m        
    return m
    

print(divide_a_todos(2, [1,2,3,4]))
print(divide_a_todos(2, [2,4]))
print(divide_a_todos(2, [1]))
print(divide_a_todos(2, [4,8,6]))
print("------3------")

def suma_total (lista: list) -> int:
    suma: int = 0
    for i in range(0,len(lista),1):
        suma += lista[i]
    return suma

print(suma_total([1,2,3,4]))
print("------4------")
#in: solo lectura, nunca se modifica el valor
#inout: lectura y escritura importa valor de entrada. semodifica segun el asegura 
        #importante! se usa en el requiere
#out:no se usa en el requiere!

def ordenados (lista: list) -> bool:
    m: bool = True
    for i in range(1,len(lista),1):
        if lista[i-1] <= lista[i]:
            m = True
        else:
            m = False
            return m        
    return m

print(ordenados([1,2,3,4]))
print(ordenados([2,4,1]))
print(ordenados([1]))
print(ordenados([4,8,6]))
print("------5------")

def longitud_siete(palabras: list[str]) -> bool:
    for i in range(0,len(palabras),1):
        if len(palabras[i]) > 7:
            return True                   
    return False

print(longitud_siete(["","hola",""]))
print(longitud_siete(["","hola","papapapa"]))
print("------6------")

def palindromo(palabra: str) -> bool:
    pali: str = ""
    for i in range(len(palabra)-1,-1,-1):
        pali = pali + palabra[i]
    return pali == palabra

print(palindromo("neuquen"))
print("------7------")

def contraseña (contra: str) -> str:
    tiene: int = 0
    if len(contra)<=8:
        return "ROJA"
    for i in contra:
        if i <= '9' and i >= '0':
            tiene +=1
        elif i <= 'Z' and i >= 'A':
            tiene += 1
    if tiene < 2:
        return "AMARILLO"
    else:
        return "VERDE"

print(contraseña("Faso12"))
print(contraseña("Faso12345"))
print(contraseña("Fasoooooo"))
print("------8------")


def historial_bancario (histo: list[tuple[str,int]]) -> str:
    saldo: int = 0
    for i in histo: 
        if i[0] == "I":
            saldo += i[1]
        else:
            saldo -= i[1]
    return saldo

print(historial_bancario([("I",2000), ("R", 20),("R", 1000),("I", 300)]))
print("------9------")

def tres_vocales (palabra: str) -> bool:
    tiene: int = 0
    vocales: str = "aeiou"
    if len(palabra) < 3:
        return False
    for i in palabra:
        for h in vocales:
            if i == h:
                tiene += 1
    return tiene >= 3

print(tres_vocales("holae"))
print(tres_vocales("hola"))
print(tres_vocales("hl"))
print(tres_vocales(""))
print("------SEGUNDA PARTE------")
print("--------- EJERCICIO 2 ---------")
print(".1.")
def borra_POS_par_inout(numeros: list) -> list:
    for i in range (0, len(numeros), 1):
        if (i%2) == 0:
            numeros[i] = 0
    return numeros

print(borra_POS_par_inout([1,2,3,4,5,6]))
print("-----------")
print(".2.")

def borra_POS_par_in(numeros: list) -> list:
    nuevos_numeros: list = []
    for i in range (0, len(numeros), 1):
        if (i%2) == 0:
            nuevos_numeros += [0]
        else:
            nuevos_numeros.append(numeros[i])
    return nuevos_numeros

print(borra_POS_par_in([1,2,3,4,5,6]))
print("-----------")
print(".3.")

def borrar_vocales (palabra: str) -> str:
    vocales: str = "aeiou"

    for i in palabra:
        for h in vocales:
            if i == h:
                palabra = palabra.replace(i, "")
    return palabra

print(borrar_vocales("hola"))
print("----------------")
print(".4.")

def remplaza_vocales(palabra: str) -> str:
    vocales: str = "aeiou"

    for i in palabra:
        for h in vocales:
            if i == h:
                palabra = palabra.replace(i, "-")
    return palabra

print(remplaza_vocales("hola"))
print("----------------")
print(".5.")

def da_vuelta_str(palabra: str) -> str:
    pali: str = ""
    for i in range(len(palabra)-1,-1,-1):
        pali = pali + palabra[i]
    return pali

print(da_vuelta_str("hola"))
print("------------")
print(".6.")

def eliminar_repetidos(palabra: str) -> str:
    pali: str = palabra[0]

    for i in palabra:
        for h in pali:
            if i == h :
                pali = pali
                break
            else:
                pali = pali + i
    return pali

print(eliminar_repetidos("ala"))
print("------ EJERCICIO 3 -------")

def aprobado (notas: list) -> int:
    suma = suma_total(notas)
    promedio = suma/len(notas)
    if pertenece(3,notas) or  pertenece(2, notas) or pertenece(1,notas) or pertenece(0,notas) or promedio < 4:
        return 3
    elif promedio >= 7:
        return 1
    elif promedio < 7 and promedio >= 4:
        return 2
        

print(aprobado([1,2,3,4]))
print(aprobado([5,6,7,8]))
print(aprobado([5,6,7,8,1]))
print(aprobado([6,7,8]))
print("---- EJERCICIO 4 -----")
print(".1.")

def lista_alumnos():
    nombre = "hola"
    alumnos: list = []
    while nombre != "listo":
        nombre = input("Ingrese nombre: ")
        if nombre != "listo":
            alumnos = alumnos + [nombre]
    return print(alumnos)

#lista_alumnos()
print("---------")
print(".2.")

def sube():
    accion: str = ""
    historial: list[(str,int)] = []
    print("Ingese:\n C: Cargar creditos \n D: Descontar creditos \n X: Finalizar la simulacion")
    while accion != "X":
        accion = input("Ingrese C, D o X: ")
        if accion == "C":
            monto = input("Ingrse monto: ")
            historial += [(accion,monto)]
        elif accion == "D":
            monto = input("Ingrse monto: ")
            historial += [(accion, monto)]
    return print(historial)

#sube()
print("------------")
print(".3.")

def siete_y_medio():
    print()
    cartas: list = [0,1,2,3,4,5,6,7,10,11,12]
    accion: str = input("¿Que desea hacer? \n")
    puntos: float = 0.0
    histo: list = []
    
    while accion!="Plantarse" and puntos <= 7.5:
        carta = random.choice(cartas)
        if pertenece(carta, [10, 11, 12]):
            puntos += 0.5
            histo += [carta]
            print(("Te toco un: "), carta)
        else:
            puntos += carta
            histo += [carta]
            print(("Te toco un: "), carta)
        if puntos <= 7.5:
            accion = input("Ingrese 'Otra' o 'Plantarse': ")

    if puntos > 7.5:
        print("PERDISTE!! \n Tus cartas fueron: ", histo, "\n Y su suma es: ", puntos)
    elif accion == "Plantarse":
        print("GANASTE!! \n Tus cartas fueron: ", histo, "\n Y su suma es: ", puntos) 

#siete_y_medio()
print("----- EJERCICIO 5 -------")
print(".1.")

res_1: list[bool] = [True]
def pertenece_a_cada_uno_version_1(s: list[list[int]], e: int, res_1: list[bool]) ->  None:
    res_1.clear()
    for i in s:
        if pertenece(e, i):
            res_1 += [True]
        else:
            res_1 += [False]
    return res_1
pertenece_a_cada_uno_version_1([[1,2,3],[1,2],[1,2,3,4,5]],3,res_1)
print("Pertenece?", res_1)
print("------------")
print(".2.")

def pertenece_a_cada_uno_version_2(s: list[list[int]], e: int, res: list[bool]) ->  None:
    res.clear()
    for i in s:
        if pertenece(e, i):
            res += [True]
        else:
            res += [False]
    return res

print("Pertenece?", pertenece_a_cada_uno_version_2([[1,2,3],[1,2],[1,2,3,4,5]],3,[]))
print("------------")
print(".3.")

def es_matriz(s: list[list[int]]) -> bool:
    compara: bool = False
    for i in range (0,len(s),1): 
        compara = len(s[i]) == len(s[0])
    return (len(s) > 0) and (len(s[0]) > 0) and compara

print(es_matriz([[1,2,3],[1,4,5],[5,7,8]]))
print(es_matriz([[1,2],[1,2,3]]))
print("----------")
print(".4.")

res_ord: list[bool] = []
def filas_ordenadas(s: list[list[int]], res_ord: list[bool]):
    for i in range (0,len(s),1):
        res_ord += [ordenados(s[i])]
    return res_ord

filas_ordenadas([[1,2,3],[4,5,6],[9,7]], res_ord)
print(res_ord)

print("----------")
print(".5.")

import numpy as np

def matriz_conp2(m, n , p:int , d:int):
    C = [[0 for _ in range(d)] for _ in range(d)]
    for i in range(d):
        for j in range(d):
            for k in range(d):
                C[i][j] += m[i][k] * n[k][j]
    return C
def matriz(p, d):
    m = np.random.randint(0,9, (d, d))
    print(m)
    if p == 0:
        identidad = [[1 if i == j else 0 for j in range(d)] for i in range(d)]
        return identidad
    resultado = m
    for _ in range(1, p):
        resultado = matriz_conp2(resultado, m, p, d )
    return resultado
print(matriz(3,3))