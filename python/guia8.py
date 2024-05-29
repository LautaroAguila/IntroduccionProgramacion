def contar_lineas(archivo1: str) -> int:
    arch = open(archivo1, 'r')
    return print(len(arch.readlines()))

contar_lineas("/home/Estudiante/Escritorio/IntroduccionProgramacion/python/archivos/archivo1.txt")

def clonar_sin_comentarios(archivo2: str) -> None:
    arch = open(archivo2, 'r')
    clone = open("/home/Estudiante/Escritorio/IntroduccionProgramacion/python/archivos/archivo2_clone.txt", 'w')
    lineas: list = arch.readlines()
    
    for l in lineas:
        sigue: bool = True
        for i in l:
            if sigue:
                if i == "#":
                    sigue = False
                elif i == " ":
                    sigue = True
                else:
                    clone.write(l)
                    sigue = False

clonar_sin_comentarios("/home/Estudiante/Escritorio/IntroduccionProgramacion/python/archivos/archivo2.txt")

def invertir_lineas(archivo3: str) -> None:
    arch = open(archivo3, 'r')
    clone = open("/home/Estudiante/Escritorio/IntroduccionProgramacion/python/archivos/archivo3_reverso.txt", 'w')
    lineas: list = arch.readlines()
    print(lineas)
    
    for l in range(len(lineas)-1,-1,-1):
        if l == len(lineas)-1:
            clone.write(lineas[l])
            clone.write("\n")
        elif l == 0:
            clone.write(lineas[l].replace("\n", ''))
        else:
            clone.write(lineas[l])
        

invertir_lineas("/home/Estudiante/Escritorio/IntroduccionProgramacion/python/archivos/archivo3.txt")

from queue import LifoQueue as Pila
import random

def generar_nros_al_azar(cantidad: int, desde: int, hasta: int) -> Pila[int]:
    p = Pila()
    for i in range(0,cantidad,1):
        p.put(random.randint(desde, hasta))
        print(p.get())

generar_nros_al_azar(3,1,20)

def buscar_el_maximo(p:Pila[int]) -> int :
    maxi: int = p.get()
    while p.empty() == False:
        i = p.get()
        if maxi <= i:
            maxi = i
    return print(maxi)

Pileta = Pila()
Pileta.put(1)
Pileta.put(4)
Pileta.put(4)
Pileta.put(2)
buscar_el_maximo(Pileta)