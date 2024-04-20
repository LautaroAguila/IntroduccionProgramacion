{-sumaRacionales :: Integer ->Integer ->Float que dados dos
naturales n, m sume todos los n´umeros racionales de la forma p/q con 1 ≤ p ≤ n y 1 ≤ q ≤ m, es decir:
problema sumaRacionales (n : N, m : N) : R {
requiere: { T rue}
asegura: { resultado =
Xn
p=1
Xm
q=1
p
q
}
}-}
sumaRacionales :: Integer -> Integer -> Float
sumaRacionales 0 m = 0
sumaRacionales n m = (sumatoriaInterna (n) (m)) + (sumaRacionales (n-1) (m)) 

sumatoriaInterna :: Integer -> Integer -> Float
sumatoriaInterna n 1 = fromInteger (n)
sumatoriaInterna n m = (fromInteger (n)/fromInteger (m) + sumatoriaInterna n (m-1))