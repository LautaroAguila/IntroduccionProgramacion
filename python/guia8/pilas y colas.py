from queue import LifoQueue as Pila
from queue import Queue as Cola
import random

def generar_nros_al_azar(cantidad: int, desde: int, hasta: int) -> Pila[int]:
    p = Pila()
    for i in range(0,cantidad,1):
        p.put(random.randint(desde, hasta))
    return p
#generar_nros_al_azar(3,1,20)

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
    operadores = Pila()
    numeros = Pila()
    for i in range (len(s)-1,-1,-1):
        if s[i] == '/' or s[i] == '*' or s[i] == '+' or s[i] == '-':
            operadores.put(s[i])
        elif s[i] != ' ':
            numeros.put(s[i])
    suma = []
    while numeros.empty() == False:
        suma += [int(numeros.get())]
        if operadores.empty() == False:
            suma += [ord(operadores.get())]
    juan = 0
    for i in suma:
        juan += i
        print(juan)
    return print(suma)
#evaluar_expresion("3 4 + 5 * 2 -")

print("COLAS")

c = Cola()
c.put(generar_nros_al_azar(3, 1, 10))
print(c.empty())
print(c)
def cantidad_elementos(c : Cola) -> int:
    cont: int = 0
    while c.empty() == False:
        c.get()
        cont +=1
    return print(cont)
cantidad_elementos(c)