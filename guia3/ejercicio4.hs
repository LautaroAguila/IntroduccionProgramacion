-- (1,2) (4,5) -> True 1<4 && 2<5

-- problema todoMenor (p:RxR, q:RxR): Bool{
--    requiere{True}
--    asegura{res = True si solo si p_1 < q_1 && p_2 < q_2 otherwise res = False}
-- }

todoMenor :: (Float,Float) -> (Float,Float) -> Bool
todoMenor (x,y) (j,k) = x < j && y < k 

--posPrimerPar: dada una terna de enteros, devuelve la posici´on del primer n´umero par si es que hay alguno, y devuelve 4 si son todos impares.

posPrimerPar :: (Int, Int, Int) -> Int
posPrimerPar (x, y, z)  | mod x 2 == 0 = 1
                        | mod y 2 == 0 = 2
                        | even z = 3
                        | otherwise = 4

crearPar :: a ->b ->(a, b)
crearPar a b = (a,b)

invertir :: (a, b) ->(b, a)
invertir (a,b) = (b,a)