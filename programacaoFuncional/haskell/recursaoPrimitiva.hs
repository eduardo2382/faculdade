--1
multiplica :: Int -> Int -> Int
multiplica num 1 = num
multiplica num cont = num + (multiplica num (cont-1))