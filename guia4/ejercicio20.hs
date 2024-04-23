tomaValorMax :: Int -> Int ->Int
tomaValorMax x y    | x == y = x
                    | otherwise = div y (menorDivisor y)
                    
menorDivisor :: Int -> Int
menorDivisor n = buscarDivisor n 2

buscarDivisor :: Int -> Int -> Int
buscarDivisor n k   | k * k > n = n  
                    | mod n k == 0 = k 
                    | otherwise = buscarDivisor n (k + 1)

{-
problema tomaValorMax(n1, n2: Z): Z {
    requiere {n1 >= 1}
    requiere {n2 >= n1}
    asegura {res = m tal que n1 <= m <= n2 y no existe otro valor entre n1 y n2 para el que la suma de sus divisores valga mas}
}
-}

sumaDivisores :: Int -> Int 
sumaDivisores n = pruebaDivisores n n

pruebaDivisores :: Int -> Int -> Int
pruebaDivisores n d | d == 1 = 1
                    | mod n d == 0 = d + pruebaDivisores n (d - 1)
                    | otherwise = pruebaDivisores n (d - 1)

compararEntreN :: Int -> Int -> Int -> Bool
compararEntreN n m k | n > m = True
                     | sumaDivisores m > sumaDivisores k = False
                     | otherwise = compararEntreN n (m - 1) k 

tomaValorMax :: Int -> Int -> Int
tomaValorMax n m | compararEntreN n m m = m 
                 | otherwise = tomaValorMax n (m - 1)

