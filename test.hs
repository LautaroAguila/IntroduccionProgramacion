import Test.HUnit
import relacionesValidas

--Las pruebas unitarias
testSuiteRelacionesValidas = test [
"" ~: (relacionesValidas ) ~?= 0,
"" ~: (relacionesValidas ) ~?= 3
]
--Correr todas las pruebas
correrTests = runTestTT testSuiteRelacionesValidas