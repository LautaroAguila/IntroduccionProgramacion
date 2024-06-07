def contar_lineas(archivo1: str) -> int:
    arch = open(archivo1, 'r')
    return print(len(arch.readlines()))

#contar_lineas("/home/Estudiante/Escritorio/IntroduccionProgramacion/python/archivos/archivo1.txt")
contar_lineas("C:\\Users\\lauta\\OneDrive\\Escritorio\\IntroProgramacion\\python\\archivos\\archivo1.txt")

def clonar_sin_comentarios(archivo2: str) -> None:
    arch = open(archivo2, 'r')
    #clone = open("/home/Estudiante/Escritorio/IntroduccionProgramacion/python/archivos/archivo2_clone.txt", 'w')
    clone = open("C:\\Users\\lauta\\OneDrive\\Escritorio\\IntroProgramacion\\python\\archivos\\archivo2_clone.txt", 'w')
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

#clonar_sin_comentarios("/home/Estudiante/Escritorio/IntroduccionProgramacion/python/archivos/archivo2.txt")
clonar_sin_comentarios("C:\\Users\\lauta\\OneDrive\\Escritorio\\IntroProgramacion\\python\\archivos\\archivo2.txt")

def invertir_lineas(archivo3: str) -> None:
    arch = open(archivo3, 'r')
    #clone = open("/home/Estudiante/Escritorio/IntroduccionProgramacion/python/archivos/archivo3_reverso.txt", 'w')
    clone = open("C:\\Users\\lauta\\OneDrive\\Escritorio\\IntroProgramacion\\python\\archivos\\archivo3_reverso.txt", 'w')
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
        

#invertir_lineas("/home/Estudiante/Escritorio/IntroduccionProgramacion/python/archivos/archivo3.txt")
invertir_lineas("C:\\Users\\lauta\\OneDrive\\Escritorio\\IntroProgramacion\\python\\archivos\\archivo3.txt")

def agregar_frase_al_final(archivo4: str, frase: str) -> None:
    archR = open(archivo4, 'r')
    lineas =  archR.readlines()+[frase]
    archR.close()
    archW = open(archivo4, 'w')
    print(lineas)
    
    archW.writelines(lineas)
    
agregar_frase_al_final("C:\\Users\\lauta\\OneDrive\\Escritorio\\IntroProgramacion\\python\\archivos\\archivo4.txt" , " pena. \n")

def agregar_frase_al_principio(archivo4: str, frase: str) -> None:
    archR = open(archivo4, 'r')
    lineas = [frase]+archR.readlines()
    archR.close()
    archW = open(archivo4, 'w')
    print(lineas)
    
    archW.writelines(lineas)
    
agregar_frase_al_principio("C:\\Users\\lauta\\OneDrive\\Escritorio\\IntroProgramacion\\python\\archivos\\archivo4.txt" , "Ay Ay AYAY canta y no llores. \n")

"""def listar_palabras_de_archivo(archivo : str) -> list:
    arch = open(archivo, 'rb') #abrir archivo en binario
    contenido = arch.read()
    palabras: list[str] = []
    palabra: str = ''
    for b in contenido:
        c: chr = chr(b)
        if (c >= 'A' and c <= 'Z') or (c >= 'a' and c <= 'z') or c == ' ' or c == '-' or (c >= '1' and c <= '9'):
            palabra += c
        elif len(palabra) >= 5:
            palabras.append(palabra)
            palabra = ''
        else: 
            palabra = ''
    return print(palabras)

import csv
def calcular_promedio_por_estudiante(notas: str, prom: str) -> None:
    f = open(notas, 'r')
    contenido = csv.reader(f)

    lista_lu: list[str] = []
    for estudiante in contenido:
        if not pertenece(estudiante[0], lista_lu):
            lista_lu.append(estudiante[0])
    lista_prom: list[int] = []
    for i in lista_lu:
        lista_prom.append(promedio_estudiante(notas, i))

    res = open(prom, 'w')
    writer = csv.writer(res)
    for i in range(len(lista_lu)):
        writer.writerow([lista_lu[i], lista_prom[i]])
    f.close()
    res.close()


def pertenece(e, l: list) -> bool:
    res: bool = False
    for i in l:
        if i == e:
            res = True
    return res
    
def promedio_estudiante(arch: str, lu: str) -> float:
    f = open(arch, 'r')
    contenido = csv.reader(f)
    suma_notas: int = 0
    cant_notas: int = 0
    for x in contenido:
        if x[0] == lu:
            suma_notas += int(x[3])
            cant_notas += 1
        
    f.close()
    return suma_notas / cant_notas"""