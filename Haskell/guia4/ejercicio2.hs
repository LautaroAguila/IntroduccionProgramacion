{-
Ejercicio 2. Implementar una funci´on parteEntera :: Float ->Integer seg´un la siguiente especificaci´on:
problema parteEntera (x: R) : Z {
requiere: { T rue }
asegura: { resultado ≤ x < resultado + 1 }
}
-}
{--parteDecimal :: Float -> Float
parteDecimal n  | n < 1 = n
                | n > 1 = parteDecimal (n-1)
                | n < 0 = n-1
parteEntera :: Float -> Integer
parteEntera n   | n > 1 = round (n - parteDecimal n)
                | n < 0 = round (n + parteDecimal n)--}

parteEntera :: Float -> Integer
parteEntera n   | n >= 0 && n < 1 = 0
                | n >= 1 = 1 + parteEntera (n-1)
                | n < 0 = (-1) + parteEntera (n+1)