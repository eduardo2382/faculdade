--1
multiplica :: Int -> Int -> Int
multiplica num 1 = num
multiplica num cont = num + (multiplica num (cont-1))

--2
elevado :: Int -> Int -> Int
elevado m 0 = 1
elevado m 1 = m
elevado m n = m * (elevado m (n-1))

--3 
elevadoTres :: Int -> Int
elevadoTres 0 = 0
elevadoTres n = elevado n 3 + (elevadoTres (n-1))

--4
doisElevado :: Int -> Int
doisElevado 0 = 1
doisElevado n = elevado 2 n + doisElevado (n-1)

--5
serie :: Float -> Float
serie 0 = 1/1
serie n = 1/(fatorial n) + serie (n-1)
    where
        fatorial 0 = 1
        fatorial 1 = 1
        fatorial num = num*(fatorial (num-1))

--6
raizQuadradaInteira :: Int -> Int
raizQuadradaInteira n = 