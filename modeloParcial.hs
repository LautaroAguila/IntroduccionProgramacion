module ModeloParcial where
{-
    problema relacionesValidas (relaciones: seq⟨String x String⟩) : Bool {
      requiere: {True}
      asegura: {(res = true) <=> relaciones no contiene ni tuplas repetidas1, ni tuplas con ambas componentes iguales}
    }
    1 A los fines de este problema consideraremos que dos tuplas son iguales si el par de elementos que las componen (sin importar el orden) son iguales.
-}
---------------------------------------------
relacionesValidas :: [(String, String)] -> Bool
relacionesValidas [] = False
relacionesValidas ts  | (noRepetida ts ts) && (noIguales ts) = True
                      | otherwise = False

noRepetida :: [(String, String)] -> [(String, String)] -> Bool
noRepetida (t:ts) [] = True
noRepetida [] (x:xs) = True
noRepetida (t:ts) (x:[]) = True
noRepetida (t:[]) (x:xs) = True
noRepetida (t:ts) (x:xs)  | t == (head xs) || t == (distintoOrden(head xs)) = False
                          | otherwise = ((noRepetida (t:ts) (xs)) && (noRepetida ts (xs)))

distintoOrden :: (String, String) -> (String,String)
distintoOrden (x,y) = (y,x)

noIguales :: [(String, String)] -> Bool
noIguales [] = True
noIguales (x:xs)  | (fst x) == (snd x) = False
                  | otherwise = noIguales xs   
--------------------------------------------
{-
    problema personas (relaciones: seq⟨String x String⟩) : seq⟨String⟩ {
      requiere: {relacionesValidas(relaciones)}
      asegura: {res no tiene elementos repetidos}
      asegura: {res tiene exactamente los elementos que figuran en alguna tupla de relaciones, en cualquiera de sus posiciones}
    }
-}
personas :: [(String, String)] -> [String]
personas [] = ["nadie"]
personas xs = sacaRepetidos (todosLosQueFiguran xs []) []

todosLosQueFiguran :: [(String, String)] -> [String] -> [String]
todosLosQueFiguran [] _ = []
todosLosQueFiguran (x:xs) cs = ((fst x) : (snd x) : cs ) ++ (todosLosQueFiguran xs cs)

sacaRepetidos :: [String] -> [String] -> [String]
sacaRepetidos (x:xs) cs | xs == [] && (pertenece x cs) = cs
                        | xs == [] && not (pertenece x cs) = (cs++[x])
                        | not (pertenece x cs) = sacaRepetidos xs (cs++[x]) 
                        | pertenece x cs = sacaRepetidos xs cs 
                        | otherwise = sacaRepetidos xs cs

pertenece :: (Eq t) => t -> [t] -> Bool
pertenece _ [] = False
pertenece t (x:xs)  | t == x = True
                    | otherwise = pertenece t xs
-------------------------------------------------------
{-
    problema personaConMasAmigos (relaciones: seq⟨String x String⟩) : String {
      requiere: {relaciones no vacía}
      requiere: {relacionesValidas(relaciones)}
      asegura: {res es el Strings que aparece más veces en las tuplas de relaciones (o alguno de ellos si hay empate)}
    }
-}
personaConMasAmigos :: [(String, String)] -> [String]
personaConMasAmigos [] = ["yo"]
personaConMasAmigos cs = masVeces (todosLosQueFiguran cs [])

masVeces :: [String] -> [String]
masVeces (c:[]) = [c]
masVeces (c:cs)   | cantidaDeVeces c (c:cs) >= cantidaDeVeces (head cs) (c:cs) = masVeces (c:((tail cs)))
                  | otherwise = masVeces (cs++[c])

cantidaDeVeces :: String -> [String] -> Int
cantidaDeVeces _ [] = 0
cantidaDeVeces x (c:cs) | x == c = 1 + cantidaDeVeces x cs
                        | otherwise = cantidaDeVeces x cs

----------------------------------------------------
{-
problema amigosDe (persona: String, relaciones: seq⟨String x String⟩) : seq⟨String⟩ {
      requiere: {relacionesValidas(relaciones)}
      asegura: {res tiene exactamente los elementos que figuran en las tuplas de relaciones en las que una de sus componentes es persona}
    }
-}
amigosDe :: String -> [(String, String)] -> [String]
amigosDe "nadie" [] = ["nadie"]
amigosDe x cs = sonAmigos x cs []

sonAmigos :: String -> [(String, String)] -> [String] -> [String]
sonAmigos _ [] ami = ami
sonAmigos x (c:cs) ami  | x == (fst c) = sonAmigos x cs (ami++[(snd c)])
                        | x == (snd c) = sonAmigos x cs (ami++[(fst c)])
                        | otherwise = sonAmigos x cs ami