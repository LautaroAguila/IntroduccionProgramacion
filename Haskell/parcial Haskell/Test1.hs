import Test.HUnit
import ModeloParcial

main = runTestTT tests

-- "nombre" ~: (funcion parametros) ~?= resultado_esperado

tests = test [
  "componentes repetidas" ~: (relacionesValidas [("ana", "ana")]) ~?= False,
  "tupla repetida" ~: (relacionesValidas [("ana", "pedro"), ("ana", "pedro")]) ~?= False,
  "tupla repetida invertida" ~: (relacionesValidas [("ana", "pedro"), ("pedro", "ana")]) ~?= False,
  "todas diferentes" ~: (relacionesValidas [("ana", "pedro"), ("ana", "carlos")]) ~?= True,

  "nadie" ~: (personas []) ~?= ["nadie"],
  "todos distintos" ~: (personas [("pa", "pe"), ("pi", "po")]) ~?= ["pa","pe","pi","po"],
  "doble pe" ~: (personas [("pa", "pe"), ("pe", "pi")]) ~?= ["pa","pe","pi"],
  "doble pa" ~: (personas [("pa", "pe"), ("pi", "pa")]) ~?= ["pa","pe","pi"], 

  "yo" ~: (personaConMasAmigos []) ~?= ["yo"],
  "Empate" ~: (personaConMasAmigos [("pa","pe"),("pa","pi"),("pe","po")]) ~?= ["pa"],
  "Uno con mas amigos" ~: (personaConMasAmigos [("pa","pe"),("pa","pi")]) ~?= ["pa"],

  "dos panas" ~: (amigosDe "pa" [("pa","pe"),("pa","pi")]) ~?= ["pe","pi"],
  "dos panas" ~: (amigosDe "pa" [("pa","pe"),("pi","pa")]) ~?= ["pe","pi"],
  "un pana" ~: (amigosDe "pa" [("pa","pe"),("pi","po")]) ~?= ["pe"],
  "dos panas" ~: (amigosDe "pa" [("pe","pa"),("pa","po")]) ~?= ["pe","po"],
  "un pana"  ~: (amigosDe "pa" [("po","pe"),("pi","pa")]) ~?= ["pi"]
  ]

-- -- EJEMPLOS

-- USUARIO1 = "JUAN"
-- USUARIO2 = "NATALIA"
-- USUARIO3 = "PEDRO"

-- RELACION1_2 = (USUARIO1, USUARIO2)
-- RELACION1_1 = (USUARIO1, USUARIO1)
-- RELACION1_3 = (USUARIO1, USUARIO3)


-- -- FUNCIONES PARA TESTING, NO BORRAR
-- -- EXPECTANY PERMITE SABER SI EL ELEMENOT QUE DEVUELVE LA FUNCIÓN ES ALGUNO DE LOS ESPERADOS
-- EXPECTANY ACTUAL EXPECTED = ELEM ACTUAL EXPECTED ~? ("EXPECTED ANY OF: " ++ SHOW EXPECTED ++ "\N BUT GOT: " ++ SHOW ACTUAL)


-- -- SONIGUALES PERMITE VER QUE DOS LISTAS SEAN IGUALES SI NO IMPORTA EL ORDEN
-- QUITAR :: (EQ T) => T -> [T] -> [T]
-- -- REQUIERE X PERTENECE A Y
-- QUITAR X (Y:YS)
-- | X == Y = YS
-- | OTHERWISE = Y : QUITAR X YS

-- INCLUIDO :: (EQ T) => [T] -> [T] -> BOOL
-- INCLUIDO [] L = TRUE
-- INCLUIDO (X:C) L = ELEM X L && INCLUIDO C (QUITAR X L)

-- SONIGUALES :: (EQ T) => [T] -> [T] -> BOOL
-- SONIGUALES XS YS = INCLUIDO XS YS && INCLUIDO YS XS 
