{-Especificar e implementar una funci´on sumaPotencias :: Integer ->Integer ->Integer ->Integer que
dados tres naturales q, n, m sume todas las potencias de la forma q
a+b con 1 ≤ a ≤ n y 1 ≤ b ≤ m. -}
sumaPotencias :: Integer -> Integer -> Integer -> Integer
sumaPotencias q 1 1 = q^2
sumaPotencias q 1 m = q^(1+m) + sumaPotencias q 1 (m-1)
sumaPotencias q n 1 = q^(n+1) + sumaPotencias q (n-1) 1
sumaPotencias q n m = q^(n+m) + sumaPotencias q (n-1) (m-1)