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
iesimoDigito x y    | n == 0 = 1
                    | n /= 0 = div n 10**iesimoDigito