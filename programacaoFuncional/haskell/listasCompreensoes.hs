--1
--[x | x <- [1..100], (mod x 5) /= 0]

--2
imparTri :: [Int] -> [Int]
imparTri lista = [x*3 | x <- lista, mod x 2 /= 0]

--3
quantosPar :: [Int] -> Int
quantosPar lista = sum [1 | x <- lista, mod x 2 == 0]

--4
divisores :: Int -> [Int]
divisores num = [x | x <- [1..num], mod num x == 0]

--5
numeroPrimo :: Int -> Bool
numeroPrimo num = length [x | x <- [1..num], mod num x == 0] == 2

--6
mdc :: Int -> Int -> Int
mdc num1 num2 = maximum [d1 | d1 <- divisores1, d2 <- divisores2, d1==d2]
    where
        divisores1 = divisores num1
        divisores2 = divisores num2

--7
mmc :: Int -> Int -> Int
mmc num1 num2 = minimum [x | x <- multiplos1, y <- multiplos2, x==y]
    where
        multiplos1 = [x*num1 | x <- [1..10]]
        multiplos2 = [x*num2 | x <- [1..10]]

--8
onSeparateLines :: [String] -> String
onSeparateLines lista = concat [x++"\n" | x <- lista]

--9 
funcReplicate :: Int -> t -> [t]
funcReplicate 0 _ = []
funcReplicate n elemento = [ elemento | x <- [1..n]]

--10
funcRepeat :: t -> [t]
funcRepeat elemento = [elemento | x <- [1..]]

--11
formatar :: String -> Int -> String
formatar frase n = if length frase < n then [' ' | x <- [1..(n-(length frase))]] ++ frase else frase

--12
tabuada :: Int -> Int -> IO() 
tabuada numeros multiplicador = 
    putStrLn(
        funcReplicate 10 '-' ++ "\n" ++
        concat [linha x (x*multiplicador) ++ "\n"| x <- [1..numeros]]
        )
    where
        linha num resultado = (formatar (show num) 2) ++ (funcReplicate 6 ' ') ++ (formatar (show resultado) 2)

--13
unicoValor :: [Int] -> Bool
unicoValor [] = False
unicoValor lista = (length [x | x <- lista, x/=(head lista)]) < 1

--14
multiplos5 :: [Int] -> Bool
multiplos5 lista = (length [x | x <- lista, (mod x 5) == 0]) == (length lista)