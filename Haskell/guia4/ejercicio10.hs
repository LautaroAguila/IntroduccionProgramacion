f1 :: Int -> Int 
f1 0  = 1
f1 n = (2^n + f1(n-1))

f2 :: Int -> Float -> Float
f2 1 q = q
f2 n q = (q^n + f2 (n-1) q)

f3 :: Int -> Float -> Float
f3 1 q = q + q^2
--f3 n q = (q^(2*n) + f2 ((2*n)-1) q)
f3 2 q = q + q^2 + q^3 + q^4
f3 n q = q^(2*n) + q^((2*n)-1) + f3 (n-1) q

f4 :: Int -> Float -> Float
f4 n q  | n == 1 = q + q^2
        | n == 2 = q^2 + q^3 + q^4
        | otherwise = (f3 n q) - (f2 (n-1) q)