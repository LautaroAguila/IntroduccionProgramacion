longitud  :: (Eq t) => [t] -> Int
longitud [] = 0
longitud xs = 1 + longitud (tail xs)

ultimo :: (Eq t) => [t] -> t 
ultimo [x] = x 
ultimo xs = ultimo (tail xs)

principio :: (Eq t) => [t] -> [t]
principio [x] = []
principio xs = ((head xs) : principio (tail xs))

reverso :: (Eq t) => [t] -> [t]
reverso [] = []
reverso  xs =  (ultimo xs) : (reverso (principio xs))