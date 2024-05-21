{-
Implementar la funci´on esFibonacci :: Integer ->Bool seg´un la siguiente especificaci´on:
problema esFibonacci (n: Z) : B {
requiere: { n ≥ 0 }
asegura: { resultado = true ↔ n es alg´un valor de la secuencia de Fibonacci definida en el ejercicio 1}
}

-}
esFibonacci :: Integer -> Bool
esFibonacci n = estaEnfibo n (1) == 1

estaEnfibo :: Integer -> Integer -> Integer
estaEnfibo n k  | n == fibonacci (k) = 1
                | fibonacci (k) > n = 0
                | otherwise = estaEnfibo n (k+1)

fibonacci:: Integer ->Integer
fibonacci n | n == 0 = 0
            | n == 1 = 1
            | otherwise = fibonacci(n-1) + fibonacci(n-2) 