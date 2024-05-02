import Test.HUnit
import ModeloParcial2

main = runTestTT tests

-- "nombre" ~: (funcion parametros) ~?= resultado_esperado

tests = test [
    "blanco" ~: (votosEnBlanco [] [] 30) ~?= 30,
    "blanco" ~: (votosEnBlanco [] [1,2,3,4] 30) ~?= 20,
    "blanco" ~: (votosEnBlanco [] [1,6,3,4] 30) ~?= 16,
    "blanco" ~: (votosEnBlanco [] [1,2,3,4,4,5] 30) ~?= 11,

    "valido" ~: (formulasValidas [("Pedro","Pa"),("pe","po"),("pu","pi"),("ji","ja")]) ~?= True,
    "valido" ~: (formulasValidas [("Pedro","Pa"),("pe","po"),("pu","pi"),("ja","ja")]) ~?= False,
    "valido" ~: (formulasValidas [("Pedro","Pa"),("pe","po"),("pu","pi"),("Pedro","ja")]) ~?= False,
    "valido" ~: (formulasValidas [("Pedro","Pa"),("pe","po"),("pe","pi"),("ji","ja")]) ~?= False, 

    "porce" ~: (porcentajeDeVotos "Pedro" [("Pedro","Pa"),("pe","po"),("pu","pi"),("ji","ja")] [1,2,3,4]) ~?= 10.0,
    "porce" ~: (porcentajeDeVotos "Pedro" [("po","pu"),("Pedro","Pa"),("pe","pi"),("ja","ji")] [1,2,3,4]) ~?= 20.0,
    "porce" ~: (porcentajeDeVotos "Pedro" [("pe","po"),("pu","pi"),("Pedro","Pa"),("ji","ja")] [1,2,3,4]) ~?= 30.0,
    "porce" ~: (porcentajeDeVotos "Pedro" [("pe","po"),("pu","pi"),("ja","ji"),("Pedro","Pa")] [1,2,3,4]) ~?= 40.0,

    "prox" ~: (proximoPresidente [("Pedro","Pa"),("pe","po"),("pu","pi"),("ji","ja")] [4,2,3,4]) ~?= "Pedro",
    "prox" ~: (proximoPresidente [("po","pu"),("Pedro","Pa"),("pe","pi"),("ja","ji")] [1,4,3,4]) ~?= "Pedro",
    "prox" ~: (proximoPresidente [("pe","po"),("pu","pi"),("Pedro","Pa"),("ji","ja")] [1,2,4,4]) ~?= "Pedro",
    "prox" ~: (proximoPresidente [("pe","po"),("pu","pi"),("ja","ji"),("Pedro","Pa")] [1,2,3,4]) ~?= "Pedro"
  ]
