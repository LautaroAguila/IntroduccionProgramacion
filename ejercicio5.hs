todosMenores :: (Integer, Integer, Integer) ->Bool
todosMenores  (x,y,z) = f x > g x && f y > g y && f z > g z

f :: Integer -> Integer
f n | n <= 7 = n*n
    | n > 7 = 2*n - 1
    
g :: Integer -> Integer
g n | even n = div n 2
    | otherwise = 3*n+1