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
print("------------")

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
print("------------")

def suma_total (lista: list) -> int:
    suma: int = 0
    for i in range(0,len(lista),1):
        suma += lista[i]
    return suma

print(suma_total([1,2,3,4]))
print("------------")
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
print("------------")

def longitud_siete(palabras: list[str]) -> bool:
    for i in range(0,len(palabras),1):
        if len(palabras[i]) > 7:
            return True                   
    return False

print(longitud_siete(["","hola",""]))
print(longitud_siete(["","hola","papapapa"]))
print("------------")

def palindromo(palabra: str) -> bool:
    pali: str = ""
    for i in range(len(palabra)-1,-1,-1):
        pali = pali + palabra[i]
    return pali == palabra

print(palindromo("neuquen"))
print("------------")

def contraseña (contra: str) -> str:
    tiene: int = 0
    if len(contra)<=8:
        return "ROJA"
    for i in contra:
        if i <= "9" and i >= "0":
            tiene +=1
        elif i <= "90" and i >= "65":
            tiene += 1
    if tiene < 2:
        return "AMARILLO"
    else:
        return "VERDE"

print(contraseña("Faso12"))
print(contraseña("Faso12345"))
print(contraseña("Fasoooooo"))

