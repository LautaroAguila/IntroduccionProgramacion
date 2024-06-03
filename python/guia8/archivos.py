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
