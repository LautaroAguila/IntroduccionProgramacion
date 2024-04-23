pertenece :: (Eq t) => t -> [t] -> Bool
pertenece t ts  | ts == [] = False
                | t == head ts = True
                | otherwise = pertenece t (tail ts)

todosIguales :: (Eq t) => [t] -> Bool
todosIguales [] = True
todosIguales xs = hayIguales xs xs

hayIguales :: (Eq t) => [t] -> [t] -> Bool
hayIguales _ []= True
hayIguales xs (d:ds)| head xs /= d = False
                    | otherwise = hayIguales (xs) (ds)


todosDistintos :: (Eq t) => [t] -> Bool
todosDistintos xs   | tail xs == [] = True
                    | not (sonDistintos (head xs) (tail xs)) = False
                    | otherwise = todosDistintos (tail xs)

sonDistintos :: (Eq t) => t -> [t] -> Bool
sonDistintos x (y:ys)   | x == y = False
                        | ys == [] = True
                        | otherwise = sonDistintos x ys


hayRepetidos :: (Eq t) => [t] -> Bool
hayRepetidos xs | xs == [] = False
                | pertenece (head xs) (tail xs) = True
                | otherwise = hayRepetidos (tail xs)

quitar :: (Eq t) => t -> [t] -> [t]
quitar x xs | xs == [] = xs
            | x == head (xs) = tail xs
            | otherwise = (head xs):(quitar x (tail xs))


quitarTodos :: (Eq t) => t -> [t] -> [t]
quitarTodos x xs | xs == [] = xs
            | x == head (xs) = quitarTodos x (tail xs)
            | otherwise = (head xs):(quitarTodos x (tail xs))

eliminarRepetidos :: (Eq t) => [t] -> [t]
eliminarRepetidos [] = []
eliminarRepetidos xs = (head xs):(eliminarRepetidos(quitarTodos (head xs) xs))

mismosElementos :: (Eq t) => [t] -> [t] -> Bool
mismosElementos xs ds   | contenido (eliminarRepetidos xs) (eliminarRepetidos ds) = True
                        | otherwise = False

contenido :: (Eq t) => [t] -> [t] -> Bool
contenido [] _ = True
contenido _ [] = True
contenido xs ds | (pertenece (head xs) ds && contenido (tail xs) ds)  = True
                | otherwise = False


capicua :: (Eq t) => [t] -> Bool
capicua xs = xs == reverso(xs)

reverso :: (Eq t) => [t] -> [t]
reverso [] = []
reverso  xs =  (ultimo xs) : (reverso (principio xs))

ultimo :: (Eq t) => [t] -> t 
ultimo [x] = x 
ultimo xs = ultimo (tail xs)

principio :: (Eq t) => [t] -> [t]
principio [x] = []
principio xs = ((head xs) : principio (tail xs))
