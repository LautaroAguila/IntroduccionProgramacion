{- 
mayorDigitoPar :: Integer ->Integer seg´un la siguiente especificaci´on:
problema mayorDigitoPar (n: N) : N {
requiere: { T rue }
asegura: { resultado es el mayor de los d´ıgitos pares de n. Si n no tiene ning´un d´ıgito par, entonces resultado es -1.
}
}
-}
mayorDigitoPar :: Integer -> Integer
mayorDigitoPar n = buscarMayorPar (-1) n
    where
        buscarMayorPar :: Integer -> Integer -> Integer
        buscarMayorPar maxPar n
            | n == 0 = maxPar
            | digitoPar > maxPar = buscarMayorPar digitoPar resto
            | otherwise = buscarMayorPar maxPar resto
            where
                digitoPar = mod n 10
                resto = div n 10