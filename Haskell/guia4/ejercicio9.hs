{- implementar una funci´on esCapicua :: Integer ->Bool que dado n ∈ N≥0 determina si n es0
un n´umero capic´ua.-}
esCapicua :: Integer -> Bool
esCapicua n | cantDigitos n == 1 = True
            | cantDigitos n == 2 = div n 10 == mod n 10 
            | cantDigitos n == 3 = div n 100 == mod n 10
            | otherwise =  iesimoDigito n (cantDigitos n) == iesimoDigito n 1 && esCapicua (div (mod n  (10 ^ ((cantDigitos n) - 1)))  10)

iesimoDigito :: Integer ->Integer ->Integer
iesimoDigito 0 _ = 1
iesimoDigito x y    | otherwise = mod (div x (10 ^ (cantDigitos (x) - y))) 10

cantDigitos :: Integer -> Integer
cantDigitos n   | div n 10 < 1 = 1
                | otherwise = 1 + cantDigitos(div n 10)

