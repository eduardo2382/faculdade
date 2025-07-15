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

