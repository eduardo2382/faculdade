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