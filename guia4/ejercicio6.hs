{- implementar la funci´on sumaDigitos :: Integer ->Integer que calcula la suma de d´ıgitos de
un n´umero natural. Para esta funci´on pueden utilizar div y mod-}
sumaDigitos :: Integer -> Integer
sumaDigitos n   | n == 0 = 0
                | n < 10 = n
                | n >= 10 = (sumaDigitos (div n 10)) + (sumaDigitos (mod n 10))