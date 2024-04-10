f1 :: Float -> Float
f1 n | n == 0 = 1
| otherwise = 0
f2 :: Float -> Float
f2 n | n == 1 = 15
| n == -1 = -15
f3 :: Float -> Float
f3 n | n <= 9 = 7
| n >= 3 = 5
f4 :: Float -> Float -> Float
f4 x y = ( x + y )/2
f5 :: ( Float , Float ) -> Float
f5 (x , y ) = ( x + y )/2
f6 :: Float -> Int -> Bool
f6 a b = truncate a == b
