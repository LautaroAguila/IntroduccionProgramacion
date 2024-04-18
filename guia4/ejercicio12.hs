raizDe2Aprox :: Integer ->Float
raizDe2Aprox 1 = 1
raizDe2Aprox n = 1 + (1/(raizDe2Aprox (n-1) +1)) 

