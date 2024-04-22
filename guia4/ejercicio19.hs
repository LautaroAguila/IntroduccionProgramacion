{- 
esSumaInicialDePrimos :: Int ->Bool seg´un la siguiente especificaci´on:
problema esSumaInicialDePrimos (n: Z) : B {
requiere: { n ≥ 0 }
asegura: { resultado = true ↔ n es igual a la suma de los m primeros n´umeros primos, para alg´un m.}
}
esSumaInicialDePrimos :: Integer -> Integer -> Bool
esSumaInicialDePrimos n k = sumaPrimo 2 n 0
    where
        sumaPrimo :: Integer -> Integer -> Integer -> Bool
        sumaPrimo m n suma
            | suma > n                      = False
            | suma == n                     = True
            | esPrimo (nEsimoPrimo m)       = sumaPrimo (m + 1) n (suma + nEsimoPrimo m)
            | otherwise                     = sumaPrimo (m + 1) n suma


-}
esSumaInicialDePrimos :: Integer -> Bool
esSumaInicialDePrimos n  = sumaPrimo 1 n 0 == n

sumaPrimo :: Integer -> Integer -> Integer -> Integer

sumaPrimo k n suma  | suma == n = n 
                    | nEsimoPrimo k == n = n
                    | suma > n = 0
                    | suma < n =  sumaPrimo (k+1) n (suma+nEsimoPrimo k)
                    | otherwise = 0

nEsimoPrimo :: Integer -> Integer
nEsimoPrimo 1 = 2
nEsimoPrimo n = posPrimo 0 0
    where posPrimo x y  | y == n = x -1
                        | x > 1 && (esPrimo x)= posPrimo (x+1) (y+1)
                        | otherwise = posPrimo (x+1) y


esPrimo :: Integer -> Bool
esPrimo n = mod ((factorial (n-1)) + 1) n  == 0  

factorial:: Integer -> Integer
factorial n | n == 0 = 1
            | n > 0 = n * factorial (n-1)