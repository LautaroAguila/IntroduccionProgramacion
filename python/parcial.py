# Ejercicio 1
#
#  problema ultima_aparicion (s: seq⟨Z⟩, e: Z) : Z {
#    requiere: {e pertenece a s }
#    asegura: {res es la posición de la última aparición de e en s}
#  }
# Por ejemplo, dados
#s = [-1,4,0,4,100,0,100,0,-1,-1]
#e = 0
# se debería devolver res=7
def ultima_aparicion(s: list[int], e: int) -> int:
    posiciones: list[int] = []
    for i in range(len(s)):
        if s[i] == e:
            posiciones += [i]
    maximo: int = 0
    for i in posiciones:
        maximo = posiciones[0]
        if maximo <= i:
            maximo = i
    return maximo
#print(ultima_aparicion(s,e))

# Ejercicio 2
#
#  problema elementos_exclusivos (s: seq⟨Z⟩, t: seq⟨Z⟩) : seq⟨Z⟩ {
#    requiere: -
#    asegura: {Los elementos de res pertenecen o bien a s o bien a t, pero no a ambas }
#    asegura: {res no tiene elementos repetidos }
#  }

# Por ejemplo, dados
#s = [-1,4,0,4,3,0,100,0,-1,-1]
#t = [0,100,5,0,100,-1,5]
# se debería devolver res = [3,4,5] ó res = [3,5,4] ó res = [4,3,5] ó res = [4,5,3] 
# ó res = [5,3,4] ó res = [5,4,3]
def pertenece(e , l: list) -> bool:
    valor: bool = False
    for i in l:
        if e == i:
            valor = True
    return valor
def elementos_exclusivos(s: list[int], t:list[int]) -> list[int]:
    acepatadas: list[int] = []
    for i in s:
        if not(pertenece(i, t)) and not(pertenece(i, acepatadas)):
            acepatadas += [i]
    for i in t:
        if not(pertenece(i, s)) and not(pertenece(i, acepatadas)):
            acepatadas += [i]
    return acepatadas
#print(elementos_exclusivos(t, s))

# Ejercicio 3
#
# Se cuenta con un diccionario que contiene traducciones de palabras del idioma castellano (claves) a palabras
# en inglés (valores), y otro diccionario que contiene traducciones de palabras en castellano (claves) a palabras
# en alemán (valores). Se pide escribir un programa que dados estos dos diccionarios devuelva la cantidad de 
# palabras que tienen la misma traducción en inglés y en alemán.

#  problema contar_traducciones_iguales (ing: dicc⟨String,String⟩, ale: dicc⟨String,String⟩) : Z {
#    requiere: -
#    asegura: {res = cantidad de palabras que están en ambos diccionarios y además tienen igual valor en ambos}
#  }

#  Por ejemplo, dados los diccionarios
#aleman = {"Mano": "Hand", "Pie": "Fuss", "Dedo": "Finger", "Cara": "Gesicht"}
#inglés = {"Pie": "Foot", "Dedo": "Finger", "Mano": "Hand"}
#  se debería devolver res=2
def contar_traducciones_iguales(ing: dict, ale: dict) -> int:
    palabras_iguales_ing: list[tuple[str, str]] = []
    palabras_iguales_ale: list[tuple[str, str]] = []
    cantidad_igules: int = 0
    for i in ing.items():
        for a in ale.items():
            if i[0] == a[0]:
                palabras_iguales_ing += [i]
                palabras_iguales_ale += [a]
    for pi in palabras_iguales_ing:
        for pa in palabras_iguales_ale:
            if pi[1] == pa[1]:
                cantidad_igules +=1
    return cantidad_igules
#print(contar_traducciones_iguales(inglés, aleman))

# Ejercicio 4
#
# Dada una lista de enteros s, se desea devolver un diccionario cuyas claves sean los valores presentes en s, 
# y sus valores la cantidad de veces que cada uno de esos números aparece en s

#  problema convertir_a_diccionario (lista: seq⟨Z⟩) : dicc⟨Z,Z⟩) {
#    requiere: -
#    asegura: {res tiene como claves los elementos de lista y res[n] = cantidad de veces que aparece n en lista}
#  }

#  Por ejemplo, dada la lista
#lista = [-1,0,4,100,100,-1,-1]
#  se debería devolver res={-1:3, 0:1, 4:1, 100:2}
#  
# RECORDAR QUE NO IMPORTA EL ORDEN DE LAS CLAVES EN UN DICCIONARIO
def convertir_a_diccionario(lista: list[int]) -> dict:
    diccionario: dict = {}
    for i in lista:
        diccionario[i] = 0
    for i in lista:
        diccionario[i] += 1
    return diccionario
#print(convertir_a_diccionario(lista))
