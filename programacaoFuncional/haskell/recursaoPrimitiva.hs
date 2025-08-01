--1
multiplica :: Int -> Int -> Int
multiplica num 1 = num
multiplica num cont = num + (multiplica num (cont-1))

--2
elevado :: Int -> Int -> Int
elevado m 1 = m
elevado m n = m * (elevado m (n-1))