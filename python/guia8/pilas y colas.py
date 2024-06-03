from queue import LifoQueue as Pila
from queue import Queue as Cola
import random

def generar_nros_al_azar(cantidad: int, desde: int, hasta: int) -> Pila[int]:
    p = Pila()
    for i in range(0,cantidad,1):
        p.put(random.randint(desde, hasta))
    return p

p = generar_nros_al_azar(3,1,20)

def cantidad_elementos(p: Pila[int]) -> int:
    cant: int = 0
    while p.empty() == False:
        p.get()
        cant += 1
    return print(cant)

Pileton = Pila()
Pileton.put(1)
Pileton.put(4)
Pileton.put(4)
Pileton.put(2)
#cantidad_elementos(Pileton)

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
#buscar_el_maximo(Pileta)

def esta_bien_balanceada(s: str) -> bool:
    p = Pila()
    pi = Pila()
    valido: bool = True
    abrir: int = 0
    cerrar: int = 0

    for i in range (len(s)-1,-1,-1):
        p.put(s[i])
    while p.empty() == False:
        i = p.get()
        if i == '(':
            pi.put(i)
            abrir +=1
        elif i == ')':
            if pi.empty():
                valido = False
            else:
                pi.put(i)
                cerrar +=1

    if abrir == cerrar:
        valido = True
    else:
        valido = False

    return print(valido)

#esta_bien_balanceada("1 + (2 x 3 - (20 / 5))")
#esta_bien_balanceada("10 ∗ ( 1 + ( 2 ∗ ( −1)))")
#esta_bien_balanceada("1 + ) 2 x 3 ( ( )")
#esta_bien_balanceada("((((())))))))))")
#esta_bien_balanceada("(((((((((((((((((((n))))))))))")

def evaluar_expresion(s: str) -> float:
    numeros = Pila()
    for i in s:
        cuenta: int = 0
        if i <= '9' and i >= '0' :
            numeros.put(int(i))
        elif i == '+':
            cuenta = numeros.get() + numeros.get()
            numeros.put(cuenta)
        elif i == '-':
            cuenta = (-numeros.get()) + numeros.get()
            numeros.put(cuenta)
        elif i == '*':
            cuenta = numeros.get() * numeros.get()
            numeros.put(cuenta)
        elif i == '/':
            cuenta = numeros.get() / numeros.get()
            numeros.put(cuenta)

    return print(cuenta)
evaluar_expresion("3 4 + 5 * 2 -")

print("COLAS")

c = Cola()
c = (generar_nros_al_azar(3, 1, 10))
print(c.empty())

def cantidad_elementos(c : Cola) -> int:
    cont: int = 0
    while c.empty() == False:
        c.get()
        cont +=1
    return print(cont)
cantidad_elementos(c)

c.put(1)
c.put(2)
c.put(1)
def buscar_el_maximo(c: Cola[int]) -> int:
    maxi: int = c.get()
    while c.empty() == False:
        i = c.get()
        if maxi <= i:
            maxi = i
    return print(maxi)

buscar_el_maximo(c)

def pertenece(numero:int, lista:list) -> bool:
    esta: bool = False
    for i in lista:
        if numero == i:
            esta = True
    return esta

def armar_secuencia_de_bingo() -> Cola[int]:
    
    l_bingo: list = []
    
    while len(l_bingo) < 100:
        i = random.randint(0, 99)
        if pertenece(i,l_bingo) == False:
            l_bingo += [i]
    c_bingo = Cola()
    for i in l_bingo:
        c_bingo.put(i)
    return c_bingo

def jugar_carton_de_bingo(carton : list[int], bolillero : Cola[int]) -> int:
    can: int = 0
    len_carton: int = 0
    
    while len(carton) != len_carton:
        salio = bolillero.get()
        for i in carton:
            if i == salio:
                len_carton += 1
        can += 1
    return print(can)

jugar_carton_de_bingo(list(range(0,12,1)), armar_secuencia_de_bingo())

def n_pacientes_urgentes( c : Cola[(int, str, str)]) -> int:
    cont : int = 0
    while c.empty()==False:
        paciente = c.get()
        if pertenece(paciente[0], list(range(1,4,1))):
            cont += 1
    return print(cont)

c = Cola()
c.put((1,"'juan'", "'pedos'"))
c.put((3,"'juan'", "'pedos'"))
c.put((10,"'juan'", "'pedos'"))
n_pacientes_urgentes(c)



