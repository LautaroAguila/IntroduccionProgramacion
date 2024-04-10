--a
f :: Integer -> Integer
f n | n == 1 = 8
    | n == 4 = 131
    | n == 16 = 16


--b
g :: Integer -> Integer
g n |n == 8 = 16
    |n == 131 = 1
    |n == 16 = 4

{-
problema g (n:Z) : Z {
    requiere: {Los numeros que puede recibir la funcion g son, 131, 8 y 16}
    asegura: {si n = 131 res = 1, si n = 8 res = 16, si n = 16 res = 4}
}
-}

--c
h :: Integer -> Integer
h x = f(g x) 

k :: Integer -> Integer
k x = g(f x) 