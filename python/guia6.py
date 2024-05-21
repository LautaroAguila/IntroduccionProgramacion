
import math 
import numpy as np


def imprimir():
    print('hola mundo') 

imprimir()

def perimetro() -> float:
    return 2 * 3.141592

a : float = perimetro() #esto es un comentario
print(a)

def perimetro2 () -> float:
    return 2 * math.pi

b : float = perimetro2()
print(b)

def perimetro3 () -> float:
    return 2 * np.pi

c : float = perimetro3()
print(c)

def es_multiplo_de(n: int,m: int) -> bool:
    return (n % m) == 0

def es_nombre_largo(nombre: str) -> bool:
    return (len(nombre) >= 3 and len(nombre) <= 8)

def devolver_el_doble_si_es_par (numero: int) -> int:
    if (numero % 2) == 0:
        return numero * 2
    #else:
    #    return numero
    return numero

def numeros_pares_de_10_a_40() -> int:
    x = 10
    while (x <= 40): # for i in range(desde,hastaUnNumeroQueNoIncluye,cuantoIncremento):
        print (x)       # print(i)
        x = x+2

def numeros_pares_de_10_a_40_con_for () -> int:
    for i in range(10,40+1,2):
        print(i)

def cuenta_atras(numero:int) -> int:
    while (numero >= 1):
        print (numero)
        numero = numero-1
    print ("DESPEGUE!!!!!!!!")

def cuenta_atras_con_for (numero:int) -> int:
    for i in range(numero,0,-1):
        print(i)
    print ("DESPEGUE!!!!!!!!")

def suma (x: int,y: int) -> int:
    return x+y+1

def imprimir_un_verso():
    print("Sean eternos los laureles\nque supimos conseguir:\nCoronados de gloria vivamos\nO juremos con gloria morir. Oid ¡mortales! el grito sagrado:\n¡Libertad, libertad, libertad! ")

def raizDe2():
    return print(round (math.sqrt (2),4))

def factorial_de_dos():
    return math.factorial(2)

def perimetro():
    return (2*1*(math.pi)) 

def imprimir_saludo (nombre: str):
    return "Hola " + nombre

def raiz_cuadrada_de(numero:float):
    return math.sqrt (numero)

def fahrenheit_a_celsius(temp_far):
    return (temp_far - 32) * (5/9)

def imprimir_dos_veces(estribillo):
    return estribillo*2

def problema_es_multiplo_de(n:int,m:int) -> bool:
    if n%m == 0: 
        return True
    else: 
        return False

def una_linea_problema_es_multiplo_de(n:int,m:int) -> bool:
    return n%m == 0

def es_par(numero)-> bool:
    return problema_es_multiplo_de (numero,2)

def cantidad_de_pizzas(comensales, min_cant_de_porciones):
    if ((comensales*min_cant_de_porciones)%8) == 0:
        return comensales*min_cant_de_porciones/8
    else:
        return math.trunc((comensales*min_cant_de_porciones/8) + 1)

def alguno_es_0(numero1, numero2):
    return numero1 == 0 or numero2 == 0

def ambos_son_0(numero1, numero2):
    return numero1 == 0 and numero2 == 0

def es_nombre_largo (nombre: str) -> bool:
    return (len (nombre) )>=3 and (len (nombre) )<=8

def es_bisiesto(año) -> bool:
    return año%400 == 0 or (año%4 == 0 and (not año%100 == 0))

print (es_bisiesto(1804))
