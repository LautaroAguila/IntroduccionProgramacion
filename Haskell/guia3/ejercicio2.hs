--a) absoluto: calcula el valor absoluto de un n´umero entero.
absoluto :: Integer -> Integer
absoluto x  | x >= 0 = x
            | x < 0 = -x 

{-
problema absoluto (x:Z) : Z {
    requiere: {True}
    asegura: {res =  al modulo de x, es decir, devuelve el valor ingresado pero positivo}
}
-}

--b) maximoabsoluto: devuelve el m´aximo entre el valor absoluto de dos n´umeros enteros.
maximoabsoluto :: Integer -> Integer -> Integer
maximoabsoluto x y  | absoluto x >= absoluto y = absoluto x
                    | absoluto x < absoluto y = absoluto y

{-
problema absoluto (x:Z, y:Z) : Z {
    requiere: {True}
    asegura: {res =  al modulo mas grande de los dos valores}
}
-}

--c) maximo3: devuelve el m´aximo entre tres n´umeros enteros.
maximo3 :: Integer -> Integer -> Integer -> Integer
maximo3  x y z  | x >= y && x >= z = x
                | y >= x && y >= z = y
                | otherwise = z

{-
problema absoluto (x:Z, y:Z, z:Z) : Z {
    requiere: {True}
    asegura: {res =  al mas grande de los tres valores}
}
-}

--d) algunoEs0: dados dos n´umeros racionales, decide si alguno de los dos es igual a 0 (hacerlo dos veces, una usando pattern
--matching y otra no).
algunoEs0 :: Float -> Float -> Bool
algunoEs0 x y = x == 0 || y == 0

algunoEs0_2 :: Float -> Float -> Bool
algunoEs0_2 x y | x == 0 = True
                | y == 0 = True
                | otherwise = False

{-
problema absoluto (x:R, y:R) : Bool {
    requiere: {True}
    asegura: {res =  True si algun valor es = 0}
    asegra: {res = False si ningun valor es = 0}
}
-}

--e) ambosSon0: dados dos n´umeros racionales, decide si ambos son iguales a 0 (hacerlo dos veces, una usando pattern matching
--y otra no).
ambosSon0 :: Float -> Float -> Bool
ambosSon0 x y = x == 0 && y == 0

ambosSon0_2 :: Float -> Float -> Bool
ambosSon0_2 x y | x /= 0 && y /= 0 = True
                | otherwise = False

{-
problema absoluto (x:R, y:R) : Bool {
    requiere: {True}
    asegura: {res =  True si ambos valores son = 0}
    asegura: {res =  False si algun valor es = 0}
}
-}

--f) mismoIntervalo: dados dos n´umeros reales, indica si est´an relacionados considerando la relaci´on de equivalencia en R
--cuyas clases de equivalencia son: (−∞, 3], (3, 7] y (7, ∞), o dicho de otra forma, si pertenecen al mismo intervalo.

mismoIntervalo :: Integer -> Integer -> String
mismoIntervalo x y  | x <= 3 && y <= 3 = "ESTAN EN EL MISMO LUGAR"
                    | (x > 3 && x <= 7) && (y > 3 && y <= 7) = "ESTAN EN EL MISMO LUGAR"
                    | (x > 7) && (y > 7) = "ESTAN EN EL MISMO LUGAR"
                    |otherwise = "NO ESTAN EN EL MISMO LUGAR"

{-
problema absoluto (x:R, y:R) : Char {
    requiere: {True}
    asegura: {res =  "ESTAN EN EL MISMO LUGAR" si ambos valores se encuantran en el mismo intervalo, que pueden ser (−∞, 3], (3, 7] y (7, ∞)}
    asegura: {res =  "NO ESTAN EN EL MISMO LUGAR" si estan en distintos intevalos}
}
-}
--g) sumaDistintos: que dados tres n´umeros enteros calcule la suma sin sumar repetidos (si los hubiera).
sumaDistintos :: Integer -> Integer-> Integer -> Integer
sumaDistintos x y z | x /= y && x /= z && y /= z = x+y+z
                    | x /= y && x == z = x+y
                    | x /= z && x == y = x+z
                    | x /= y && y == z = x+y
                    | x == y && x == z = x

{-
problema absoluto (x:R, y:R, z:R) : R {
    requiere: {True}
    asegura: {res =  la suma de los tres numero}
    asegura: {no suma los repetidos}
}
-}

--h) esMultiploDe: dados dos n´umeros naturales, decidir si el primero es m´ultiplo del segundo.
esMultiploDe :: Integer -> Integer -> String
esMultiploDe x y    | mod x y == 0 = "el primero es multiplo del segundo"
                    | otherwise = "el primero no es multiplo del segundo"

{-
problema absoluto (x:Z, y:Z) : Char {
    requiere: {x, y son numeros naturales}
    asegura: {res = "el primero es multiplo del segundo" si el resto de x / y es = 0}
    asegura: {res = "el primero no es multiplo del segundo" si el resto de x / y no es = 0}
}
-}
                    
--i) digitoUnidades: dado un n´umero entero, extrae su d´ıgito de las unidades.
digitoUnidades :: Integer -> Integer
digitoUnidades n = mod n 10

--j) digitoDecenas: dado un n´umero entero, extrae su d´ıgito de las decenas.
digitoDecenas :: Integer -> Integer
digitoDecenas n = mod n 100 - mod n 10



