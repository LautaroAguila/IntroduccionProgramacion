{-
fact 5 = 5  * fact 4 -> 5 * (4 fact 3) -> 5*4*(3* fact 2) -> 5*4*3*(2 fact 1) -> 5*4*3*2*(1 fact 0) -> 5*4*3*2*1*1
-}
factorial:: Integer -> Integer
factorial n  | n == 0 = 1
            | n > 0 = n * factorial (n-1)