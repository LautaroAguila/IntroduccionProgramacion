sacarBlancosRepetidos :: [Char] -> [Char]
sacarBlancosRepetidos [] = []
sacarBlancosRepetidos cs    | (head cs) == ' ' && (head cs) == (head (tail cs)) = sacarBlancosRepetidos (tail cs)
                            | otherwise = (head cs):(sacarBlancosRepetidos (tail cs))

contarPalabras :: [Char] -> Integer
contarPalabras [] = 0
contarPalabras cs = cantidadPalabras cs 0

cantidadPalabras :: [Char] -> Integer -> Integer
cantidadPalabras [] suma = suma
cantidadPalabras cs suma |  (head cs) /= ' ' = cantidadPalabras (tail cs) (suma+1)
                         | otherwise = cantidadPalabras (tail cs) suma

palabras :: [Char] -> [[Char]]
palabras cs = reverso (separaPalabras cs cs)

separaPalabras :: [Char] -> [Char] -> [[Char]]
separaPalabras xs ys | (tail xs) == [] = [caracteres ys] 
                     | (head xs) == ' ' = [caracteres (tail xs)] ++ separaPalabras (tail xs) ys
                     | otherwise = separaPalabras (tail xs) ys

caracteres :: [Char] -> [Char]
caracteres (x:xs) | x == ' ' = []
                  | xs == [] = [x]
                  | otherwise = x:(caracteres xs)


palabraMasLarga :: [Char] -> [Char]
palabraMasLarga cs = busacarPalabraLarga(palabras cs)

busacarPalabraLarga :: [[Char]] -> [Char]
busacarPalabraLarga [[]] = []
busacarPalabraLarga (c:cs)  | c == [] = []
                            | longitud c >= longitud (head cs) = busacarPalabraLarga (c:(tail cs))
                            | otherwise = busacarPalabraLarga (cs) 




reverso :: (Eq t) => [t] -> [t]
reverso [] = []
reverso  xs =  (ultimo xs) : (reverso (principio xs))
ultimo :: (Eq t) => [t] -> t 
ultimo [x] = x 
ultimo xs = ultimo (tail xs)
principio :: (Eq t) => [t] -> [t]
principio [x] = []
principio xs = ((head xs) : principio (tail xs))
longitud  :: (Eq t) => [t] -> Int
longitud [] = 0
longitud xs = 1 + longitud (tail xs)