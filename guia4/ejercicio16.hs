{-

Recordemos que un entero p > 1 es primo si y s´olo si no existe un entero k tal que 1 < k < p y k divida a p.
a) Implementar menorDivisor :: Integer ->Integer que calcule el menor divisor (mayor que 1) de un natural n pasado
como par´ametro.
b) Implementar la funci´on esPrimo :: Integer ->Bool que indica si un n´umero natural pasado como par´ametro es primo.
c) Implementar la funci´on sonCoprimos :: Integer ->Integer ->Bool que dados dos n´umeros naturales indica si no
tienen alg´un divisor en com´un mayor estricto que 1.
d) Implementar la funci´on nEsimoPrimo :: Integer ->Integer que devuelve el n-´esimo primo (n ≥ 1). Recordar que el
primer primo es el 2, el segundo es el 3, el tercero es el 5, etc.

-}

{-A-}
menorDivisor :: Integer -> Integer
menorDivisor n = buscarDivisor n 2

buscarDivisor :: Integer -> Integer -> Integer
buscarDivisor n k   | k * k > n = n  
                    | mod n k == 0 = k 
                    | otherwise = buscarDivisor n (k + 1)

{-B-}
esPrimo :: Integer -> Bool
esPrimo n = mod ((factorial (n-1)) + 1) n  == 0  

factorial:: Integer -> Integer
factorial n | n == 0 = 1
            | n > 0 = n * factorial (n-1)

{-C-}

sonCoprimos :: Integer -> Integer -> Bool
sonCoprimos x y = buscarDivisor x (menorDivisor y) == buscarDivisor y (menorDivisor x)

{-D-}
nEsimoPrimo :: Integer -> Integer
nEsimoPrimo 1 = 2
nEsimoPrimo n = posPrimo 0 0
    where posPrimo x y  | y == n = x -1
                        | x > 1 && (esPrimo x)= posPrimo (x+1) (y+1)
                        | otherwise = posPrimo (x+1) y
