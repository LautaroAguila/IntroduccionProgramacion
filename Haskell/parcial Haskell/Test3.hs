import Test.HUnit
import ModeloParcial3

main = runTestTT tests

-- "nombre" ~: (funcion parametros) ~?= resultado_esperado

tests = test [
    "atajaronSuplentes" ~: (atajaronSuplentes [("aa","ss")] [] 30) ~?= 0,
    "atajaronSuplentes" ~: (atajaronSuplentes [("aa","ss")] [1,2,3,4] 30) ~?= 10,
    "atajaronSuplentes" ~: (atajaronSuplentes [("aa","ss")] [1,6,3,4] 30) ~?= 14,
    "atajaronSuplentes" ~: (atajaronSuplentes [("aa","ss")] [1,2,3,4,4,5] 30) ~?= 19,

    "equiposValidos" ~: (equiposValidos [("Pedro","Pa"),("pe","po"),("pu","pi"),("ji","ja")]) ~?= True,
    "equiposValidos" ~: (equiposValidos [("Pedro","Pa"),("pe","po"),("pu","pi"),("ja","ja")]) ~?= False,
    "equiposValidos" ~: (equiposValidos [("Pedro","Pa"),("pe","po"),("pu","pi"),("Pedro","ja")]) ~?= False,
    "equiposValidos" ~: (equiposValidos [("Pedro","Pa"),("pe","po"),("pe","pi"),("ji","ja")]) ~?= False, 

    "porcentajeDeGoles" ~: (porcentajeDeGoles "Pedro" [("Pa","Pedro"),("pe","po"),("pu","pi"),("ji","ja")] [1,2,3,4]) ~?= 10.0,
    "porcentajeDeGoles" ~: (porcentajeDeGoles "Pedro" [("po","pu"),("Pa","Pedro"),("pe","pi"),("ja","ji")] [1,2,3,4]) ~?= 20.0,
    "porcentajeDeGoles" ~: (porcentajeDeGoles "Pedro" [("pe","po"),("pu","pi"),("Pa","Pedro"),("ji","ja")] [1,2,3,4]) ~?= 30.0,
    "porcentajeDeGoles" ~: (porcentajeDeGoles "Pedro" [("pe","po"),("pu","pi"),("ja","ji"),("Pa","Pedro")] [1,2,3,4]) ~?= 40.0,

    "vallaMenosVencida" ~: (vallaMenosVencida [("Pedro","Pa"),("pe","po"),("pu","pi"),("ji","ja")] [1,1,3,4]) ~?= "Pa",
    "vallaMenosVencida" ~: (vallaMenosVencida [("po","pu"),("Pedro","Pa"),("pe","pi"),("ja","ji")] [2,1,3,4]) ~?= "Pa",
    "vallaMenosVencida" ~: (vallaMenosVencida [("pe","po"),("pu","pi"),("Pedro","Pa"),("ji","ja")] [2,2,1,4]) ~?= "Pa",
    "vallaMenosVencida" ~: (vallaMenosVencida [("pe","po"),("pu","pi"),("ja","ji"),("Pedro","Pa")] [4,2,3,1]) ~?= "Pa"
  ]
