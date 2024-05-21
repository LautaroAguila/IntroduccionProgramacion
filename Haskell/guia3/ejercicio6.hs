bisiesto :: Integer ->Bool
bisiesto n = mod n 4 == 0 && mod n 100 /= 0 || mod n 400 == 0
--bisiesto n = not(mod n 4 /= 0 || mod n 100 == 0 && mod n 400 /= 0)
