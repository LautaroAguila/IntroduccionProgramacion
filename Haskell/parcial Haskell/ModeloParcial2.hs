module ModeloParcial2 where

{- 
1. Viva la democracia
La elecci´on peri´odica de los gobernantes es la base de los Estados Modernos. Este sistema, denominado ”democracia”(t´ermino
proveniente de la antigua Grecia), tiene diferentes variaciones, que incluyen diferentes formas de elecci´on del/a m´aximo/a
mandatario/a. Por ejemplo, en algunos pa´ıses se eligen representantes en un colegio electoral (EEUU). En otros se vota a
los/as miembros del parlamento (Espa˜na). En nuestro pa´ıs elegimos de forma directa la f´ormula presidencial (Presidente/a y
Vicepresidente/a) cada 4 a˜nos.
A continuaci´on presentamos una serie de ejercicios que tienen como objetivo implementar funciones para sistema de escrutinio
de una elecci´on presidencial. Leer las descripciones y especificaciones e implementar las funciones requeridas en Haskell, utilizado
s´o´lamente las herramientas vistas en clase.
Las f´ormulas presidenciales ser´an representadas por tuplas (String x String), donde la primera componente ser´a el nombre del
candidato a presidente, y la segunda componente ser´a el nombre del candidato a vicepresidente.
En los problemas en los cuales se reciban como par´ametro secuencias de f´ormulas y votos, cada posici´on de la lista votos
representar´a la cantidad de votos obtenidos por la f´ormula del par´ametro formulas en esa misma posici´on. Por ejemplo, si la
lista de f´ormulas es [(”Juan P´erez”,”Susana Garc´ıa”), (”Mar´ıa Montero”,”Pablo Moreno”)] y la lista de votos fuera [34, 56], eso
indicar´ıa que la f´ormula encabezada por Mar´ıa Montero obtuvo 56 votos, y la lista encabezada por Juan P´erez obtuvo 34 votos.
1.1. Ejercicio 1 - Votos en Blanco
problema votosEnBlanco(formulas : seq < String × String >, votos : seq < Z >, cantT otalV otos : Z) : Z{
requiere : {formulasV alidas(formulas)}
requiere : {|formulas| = |votos|}
requiere : { Todos los elementos de votos son mayores o iguales que 0}
requiere : { La suma de todos los elementos de votos es menor o igual a cantT otalV otos}
asegura : {res es la cantidad de votos emitidos que no correspondieron a niguna de las f´ormulas que se presentaron }
-}

votosEnBlanco :: [(String,String)] -> [Int] -> Int -> Int
votosEnBlanco _ [] x = x
votosEnBlanco _ votQCuentan votTotal = votTotal - (sumar votQCuentan)

sumar :: [Int] -> Int
sumar [] = 0
sumar (x:xs) = x + sumar xs

{-
1.2. Ejercicio 2 - F´ormulas V´alidas
problema formulasValidas(formulas : seq < String × String >) : Bool{
requiere : {T rue}
asegura : {(res = true) ↔ formulas no contiene nombres repetidos, es decir que cada candidato est´a en una ´unica f´ormula (no
se puede ser candidato a presidente y a vicepresidente ni en la misma f´ormula ni en f´ormulas distintas) }
}-}

formulasValidas :: [(String,String)] -> Bool
formulasValidas [] = True
formulasValidas xs = noEstanEnMasDeUnaFormula xs

noEstanEnMasDeUnaFormula :: [(String,String)] -> Bool
noEstanEnMasDeUnaFormula [] = True
noEstanEnMasDeUnaFormula [x] = True
noEstanEnMasDeUnaFormula ((p,v):(x,y):xs) = p/=v && p/=y && p/=x && x/=v && y/=v && y/=x && noEstanEnMasDeUnaFormula ((p,v):xs) && noEstanEnMasDeUnaFormula ((x,y):xs) && noEstanEnMasDeUnaFormula xs

{-1.3. Ejercicio 3 - Porcentaje de Votos
problema porcentajeDeVotos(presidente : String, formulas : seq < String × String >, votos : seq < Z >) : R{
requiere : {La primera componente de algun elemento de formulas es presidente}
requiere : {formulasV alidas(formulas)}
requiere : {|formulas| = |votos|}
requiere : { Todos los elementos de votos son mayores o iguales que 0}
requiere : { Hay al menos un elemento de votos que es mayor estricto que 0}
asegura : {res es el porcentaje de votos que obtuvo la f´ormula encabezada por presidente sobre el total de votos afirmativos }
}
Para resolver este ejercicio pueden utilizar la siguiente funci´on que devuelve como Float la divisi´on entre dos n´umeros de tipo
Int:
division :: Int → Int → Float
division a b = (fromIntegral a) / (fromIntegral b)
-}

division :: Int -> Int -> Float
division a b = (fromIntegral a) / (fromIntegral b)

porcentajeDeVotos :: String -> [(String,String)] -> [Int] -> Float
porcentajeDeVotos _ [] _ = 0.0
porcentajeDeVotos presi ((p,_):ps) (x:xs)   | presi == p = division (x*100) (sumar (x:xs))
                                            | otherwise = porcentajeDeVotos presi ps ((xs)++[x])


{-
1
1.4. Ejercicio 4 - Pr´oximo Presidente
problema proximoPresidente(formulas : seq < String × String >, votos : seq < Z >) : String{
requiere : {La primera componente de algun elemento de formulas es presidente}
requiere : {formulasV alidas(formulas)}
requiere : {|formulas| = |votos|}
requiere : { Todos los elementos de votos son mayores o iguales que 0}
requiere : { Hay al menos un elemento de votos que es mayor estricto que 0}
requiere : {|formulas| > 0}
asegura : {res es el candidato a presidente de formulas m´as votado de acuerdo a los votos contabilizados en votos}
}
-}
proximoPresidente :: [(String,String)] -> [Int] -> String
proximoPresidente [(p,_)] [x] = p
proximoPresidente ((p,v):(p2,v2):ps) (x:y:xs)    | x >= y = proximoPresidente ((p,v):ps) (x:xs)
                                                | otherwise = proximoPresidente ((p2,v2):ps) (y:xs)