tomaValorMax :: Int -> Int ->Int
tomaValorMax x y    | x == y = x
                    | otherwise = div y (menorDivisor y)
menorDivisor :: Int -> Int
menorDivisor n = buscarDivisor n 2

buscarDivisor :: Int -> Int -> Int
buscarDivisor n k   | k * k > n = n  
                    | mod n k == 0 = k 
                    | otherwise = buscarDivisor n (k + 1)