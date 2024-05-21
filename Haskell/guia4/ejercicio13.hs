sumatoriaDoble :: Integer -> Integer -> Integer
sumatoriaDoble 1 m = m
sumatoriaDoble n m = (sumatoriaInterna (m) (n)) + (sumatoriaDoble (n-1) (m))

sumatoriaInterna :: Integer -> Integer -> Integer
sumatoriaInterna 1 i = i
sumatoriaInterna m i = (i^m + sumatoriaInterna (m-1) i)