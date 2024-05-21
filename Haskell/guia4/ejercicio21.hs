
comparaCuadrados :: Integer -> Integer -> Integer -> Integer
comparaCuadrados p q r | q < 0 = 0
                       | (p^2) + (q^2) <= (r^2) = 1 + comparaCuadrados p (q - 1) r
                       | otherwise = comparaCuadrados p (q - 1) r

pitagoras :: Integer -> Integer -> Integer -> Integer
pitagoras n m r | n < 0 = 0 
                | otherwise = comparaCuadrados n m r + pitagoras (n - 1) m r