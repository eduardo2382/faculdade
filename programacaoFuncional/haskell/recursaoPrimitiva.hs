--1
multiplica :: Int -> Int -> Int
multiplica num 1 = num
multiplica num cont = num + (multiplica num (cont-1))

--2
elevado :: Int -> Int -> Int
elevado m 1 = m
elevado m n = m * (elevado m (n-1))

--3 
elevado3 :: Int -> Int
elevado3 0 = 0
elevado3 n = elevado n 3 + (elevado3 (n-1))