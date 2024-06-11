import math 
def imprimir():
    print('hola mundo') 
def imprimir_un_verso():
    print('a la panlgola soy alergico \n por eso tengo cone alla en mexico')
def raizDe2():
    return print("{0:.4f}".format(math.sqrt(2)))
def perimetro() -> float:
    return 2 * 3.141592 #esto es un comentario
def perimetro2 () -> float:
    return 2 * math.pi
def imprimir_saludo(nombre:str) -> None:
    return print("Hola ", nombre)
def raiz_cuadrada_de_nro(nro: int) -> None:
    return math.sqrt(nro)
def fare_a_celci(t : float) -> float:
    return  ((t - 32) * 5)/9
def imprimir_dos_veces(estr: str) -> str:
    return estr*2
def es_multiplo(n: int, m:  int) -> bool:
    return n%m == 0
def es_par(nro : int) -> bool:
    return es_multiplo(nro,2)
def cantidad_de_pizzas(comen: int, min_cant_por_piza: int ) -> int:
    pizas: int = 0
    por_nes: int = min_cant_por_piza * comen
    necesarias = True
    while por_nes >= 8*pizas and necesarias:
        if pizas * 8 == por_nes:
            necesarias = False
        else:
            pizas += 1
    return pizas
def alguno_es_0(numero1, numero2):
    return numero1 == 0 or numero2 == 0
def ambos_son_0(numero1, numero2):
    return numero1 == 0 and numero2 == 0
def es_nombre_largo (nombre: str) -> bool:
    return (len (nombre) )>=3 and (len (nombre) )<=8
def es_bisi(año: int) -> bool:
    return (es_multiplo(año, 400)) or (es_multiplo(año,4) and not(es_multiplo(año,100)))
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
    return x+y

    return problema_es_multiplo_de (numero,2)
