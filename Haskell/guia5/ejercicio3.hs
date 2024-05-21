sumatoria :: [Integer] -> Integer
sumatoria [] = 0
sumatoria xs = (head xs) + sumatoria (tail xs)

productoria :: [Integer] -> Integer
productoria [] = 1
productoria xs = (head xs) * (productoria (tail xs))

maximo :: (Ord t) => [t] -> t 
maximo xs = buscarMaximo (head xs) xs

buscarMaximo :: (Ord t) => t -> [t] -> t 
buscarMaximo x xs   | (tail xs) == [] && x >= (head xs) = x
                    | tail xs == [] = head xs
                    | x >= head xs = buscarMaximo x (tail xs)
                    | x < head xs = buscarMaximo (head xs) (tail xs)

sumarN :: Integer -> [Integer] -> [Integer]
sumarN n xs | tail xs == [] = [(head xs)+n]
            | otherwise = ((head xs)+n) : (sumarN n (tail xs)) 

sumarElPrimero :: [Integer] -> [Integer]
sumarElPrimero xs = sumarN (head xs) xs

sumarElUltimo :: [Integer] -> [Integer]
sumarElUltimo xs = sumarN (head (reverso xs)) xs
{-last xs-} 

pares :: [Integer] -> [Integer]
pares [] = []
pares xs    | mod (head xs) 2 == 0 = (head xs):(pares ((quitar (head xs) xs)))
            | otherwise = pares (tail xs)

multiplosDeN :: Integer -> [Integer] -> [Integer]
multiplosDeN _ [] = []
multiplosDeN n xs   | mod (head xs) n == 0 = eliminarRepetidos ((head xs):(multiplosDeN n ((quitar (head xs) xs))))
                    | otherwise = multiplosDeN n (tail xs)

--[1,2]++[3]
ordenar :: (Ord t) => [t] -> [t]
ordenar [] = []
ordenar xs = ordenar ((quitarTodos (maximo xs) xs))++ [maximo xs] 



{-AUXILIARES DEL EJERCICIO ANTERIOR-}
eliminarRepetidos :: (Eq t) => [t] -> [t]
eliminarRepetidos [] = []
eliminarRepetidos xs = (head xs):(eliminarRepetidos(quitarTodos (head xs) xs))
reverso :: (Eq t) => [t] -> [t]
reverso [] = []
reverso  xs =  (ultimo xs) : (reverso (principio xs))
ultimo :: (Eq t) => [t] -> t 
ultimo [x] = x 
ultimo xs = ultimo (tail xs)
principio :: (Eq t) => [t] -> [t]
principio [x] = []
principio xs = ((head xs) : principio (tail xs))
---
quitar :: (Eq t) => t -> [t] -> [t]
quitar x xs | xs == [] = xs
            | x == head (xs) = tail xs
            | otherwise = (head xs):(quitar x (tail xs))
quitarTodos :: (Eq t) => t -> [t] -> [t]
quitarTodos x xs | xs == [] = xs
            | x == head (xs) = quitarTodos x (tail xs)
            | otherwise = (head xs):(quitarTodos x (tail xs))