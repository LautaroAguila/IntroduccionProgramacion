{- implementar una funci´on eAprox :: Integer ->Float que aproxime el valor del n´umero e
a partir de la siguiente sumatoria:-}

eAprox :: Integer ->Float
eAprox 0 = 1
eAprox 1 = 2
eAprox n = (1/fromIntegral(factorial n)) + eAprox (n-1)

factorial:: Integer -> Integer
factorial n  | n == 0 = 1
             | n > 0 = n * factorial (n-1)

e :: Float
e = eAprox 100
