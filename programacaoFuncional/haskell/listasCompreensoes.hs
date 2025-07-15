--1
--[x | x <- [1..100], (mod x 5) /= 0]

--2
imparTri :: [Int] -> [Int]
imparTri lista = [x*3 | x <- lista, mod x 2 /= 0]

