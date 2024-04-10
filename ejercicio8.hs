comparar :: Integer ->Integer ->Integer
comparar a b| sumaUltimosDosDigitos a < sumaUltimosDosDigitos b = 1
            | sumaUltimosDosDigitos a > sumaUltimosDosDigitos b = -1
            | sumaUltimosDosDigitos a == sumaUltimosDosDigitos b = 0


sumaUltimosDosDigitos:: Integer -> Integer
sumaUltimosDosDigitos x = (mod (abs x) 10) + (mod (div x 10) 10) 