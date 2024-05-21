{-jercicio 4. Especificar e implementar la funci´on sumaImpares :: Integer ->Integer que dado n ∈ N sume los primeros
n n´umeros impares. Por ejemplo: sumaImpares 3 ; 1+3+5 ⇝ 9.-}
sumaImpares :: Integer ->Integer
sumaImpares n   |n == 1 = 1
                | n > 1 = n_esimoImpar + sumaImpares (n-1)
                where n_esimoImpar = 2*n - 1
