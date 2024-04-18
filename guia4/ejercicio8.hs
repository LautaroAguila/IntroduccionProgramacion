{-Implementar la funci´on iesimoDigito :: Integer ->Integer ->Integer que dado un n ∈ N≥0 y un i ∈ N
menor o igual a la cantidad de d´ıgitos de n, devuelve el i-´esimo d´ıgito de n.
problema iesimoDigito (n: Z, i: N) : Z {
requiere: { n ≥ 0 ∧ 1 ≤ i ≤ cantDigitos(n) }
asegura: { resultado = (n div 10cantDigitos(n)−i) mod 10 }
}
problema cantDigitos (n: Z) : N {
requiere: { n ≥ 0 }
asegura: { n = 0 → resultado = 1}
asegura: { n̸ = 0 → (n div 10resultado−1 > 0 ∧ n div 10resultado = 0) }
}-}
iesimoDigito :: Integer ->Integer ->Integer
iesimoDigito 0 _ = 1
iesimoDigito x y    | otherwise = mod (div x (10 ^ (cantDigitos (x) - y))) 10

cantDigitos :: Integer -> Integer
cantDigitos n   | div n 10 < 1 = 1
                | otherwise = 1 + cantDigitos(div n 10)

iesimoDigito2 :: Integer -> Integer -> Integer
iesimoDigito2 n 1 = primerDigito n 
iesimoDigito2 n i = iesimoDigito2 (sacarPrimerDigito n) (i-1)

primerDigito :: Integer -> Integer
primerDigito n = div n (10^((cantDigitos n) -1))

sacarPrimerDigito :: Integer -> Integer
sacarPrimerDigito n = mod n (10^((cantDigitos n) -1))

