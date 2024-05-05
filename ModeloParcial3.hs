module ModeloParcial3 where

{-
¡Vamos Campeones!
En exactas se está jugando un torneo de fútbol y la facultad le pidió a los alumnos de IP programar algunas
funcionalidades en Haskell, Los datos con los que contamos para esto son los nombres de los equipos que participan
del torneo, los nombres de los arqueros titulares de cada uno de dichos equipos, y la cantidad de goles recibidos
por esos arqueros. Los nombres de los equipos y sus respectivos arqueros serán modelados mediante tuplas de tipo
(String, String), donde la primera componente representa el nombre del equipo, y la segunda representa el nombre
del arquero titular de dicho equipo.
En los problemas en los cuales se reciben como parámetros secuencias arquerosPorEquipo y goles, cada posición de
la lista goles representará la cantidad de goles recibidos por el arquero del equipo que se encuentra en esa misma
posicion de arquerosPorEquipo. Por ejemplo, si la lista arquerosPorEquipo es [("Sacachispas", "Neyder Aragon"),
("Fenix", "Nahuel Galardi")] y la lista de goleses [3, 5], eso indicaría que Neyder Aragon recibió 3 goles, y
Nahuel Galardi 5.

Se pueden usar las siguientes funciones del preludio:
	- Listas: head, tail, last, init, length, elem, ++
	- Tuplas: fst, snd
	- Operaciones Lógicas: &&, ||, not
	- Constructores de listas: (x:xs), []
	- Constructores de tuplas: (x, y)

1) Atajaron Suplentes
problema atajaronSuplentes (arquerosPorEquipo: seq<String X String>, goles: seq<Z>, totalGolesTorneo: Z): Z {
	requiere: {equiposValidos(arquerosPorEquipo)
	requiere: {|arquerosPorEquipo| = |goles|}
	requiere: {Todos los elementos de goles son mayores o iguales a 0}
	requiere: {La suma de todos los elementos de goles es menor o igual a totalGolesTorneo}
	asegura: {
	res es la cantidad de goles recibidos en el torneo por arqueros que no son titulares en sus equipos.
	}
}
-}

atajaronSuplentes :: [(String,String)] -> [Int] -> Int -> Int
atajaronSuplentes [] _ _ = 0
atajaronSuplentes _ [] _ = 0
atajaronSuplentes x (c:cs) g = c + atajaronSuplentes x cs g

{- 
2) Equipos Válidos
problema equiposValidos (arquerosPorEquipo: seq<String X String>): Bool {
	requiere: {True}
	asegura: {
	(res = True) <=> arquerosPorEquipo no contiene nombres de clubes repetidos, ni arqueros repetidos, ni jugadores con nombre del club
	}
}
-}

equiposValidos :: [(String,String)] -> Bool
equiposValidos [] = True
equiposValidos (x:[]) = True
equiposValidos (x:c:cs) | (fst(x)) /= (fst(c)) && (snd(x)) /= (snd(c)) && (fst(x)) /= (snd(x)) && (fst(c)) /= (snd(c)) && (fst(x)) /= (snd(c)) && (fst(c)) /= (snd(x)) = equiposValidos (x:cs) && equiposValidos (c:cs)
                        | otherwise = False

{-
3) Porcentaje de goles
problema porcentajeDeGoles (arquero: String, arquerosPorEquipo: seq<String X String>, goles: seq<Z>): R {
	requiere: {La segunda componente de algún elemento de arquerosPorEquipo es arquero}
	requiere: {equiposValidos(arquerosPorEquipo)}
	requiere: {|arquerosPorEquipo| = |goles|}
	requiere: {Todos los elementos de goles son mayores o iguales a 0}
	requiere: {Hay al menos un elemento de goles mayores estricto a 0}
	asegura: {
	res es el porcentaje de goles que recibió arquero sobre el total de goles recibidos por arqueros titulares
	}
}
Para resolver este ejercicio pueden utilizar la siguiente función que devuelve como float la división entre dos
numeros de tipo Int.
division :: Int -> Int -> Float
division a b = fromIntegral a / fromIntegral b
-}

porcentajeDeGoles :: String -> [(String,String)] -> [Int] -> Float 
porcentajeDeGoles a (x:xs) (c:cs)   | a == (snd(x)) = division (c*100) (suma (c:cs))
                                    | otherwise = porcentajeDeGoles a xs (cs++[c])

division :: Int -> Int -> Float
division a b = fromIntegral a / fromIntegral b
suma :: [Int] -> Int
suma [] = 0
suma (x:xs) = x + (suma xs)

{-
4) Valla Menos Vencida
problema vallaMenosVencida (arquerosPorEquipo: seq<String X String>, goles: seq<Z>): String {
	requiere: {equiposValidos(arquerosPorEquipo)}
	requiere: {|arquerosPorEquipo| = |goles|}
	requiere: {Todos los elementos de goles son mayores o iguales a 0}
	requiere: {|goles| > 0}
	asegura: {
	res es alguno de los arqueros de arquerosPorEquipo que menor goles recibió de acuerdo a goles
	}
}
-}

vallaMenosVencida :: [(String,String)] -> [Int] -> String
vallaMenosVencida (x:[]) (c:[]) = snd x
vallaMenosVencida (x:y:xs) (c:d:cs) | c <= d = vallaMenosVencida (x:xs) (c:cs)
                                    | otherwise = vallaMenosVencida (y:xs) (d:cs)











