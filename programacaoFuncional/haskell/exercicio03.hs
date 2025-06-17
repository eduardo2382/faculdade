-- 2
diferentes :: Int -> Int -> Int -> Bool
diferentes num1 num2 num3 = if not(num1 == num2) && not(num2 == num3) && not(num1 == num3) then True else False


-- 3
mediana :: Int -> Int -> Int -> Int
mediana num1 num2 num3 
    | (num1 >= num2 && num1 <= num3) || (num1 >= num3 && num1 <= num2) = num1
    | (num2 >= num1 && num2 <= num3) || (num2 >= num3 && num2 <= num1) = num2
    | (num3 >= num2 && num3 <= num1) || (num3 >= num1 && num3 <= num2) = num3
    | otherwise = num1


-- 4
quantidadeLivros :: Int -> Int -> Char
quantidadeLivros livros alunos 
    | divisao <= 8   = 'A'
    | divisao <= 12  = 'B'
    | divisao <= 18  = 'C'
    | otherwise      = 'D'
    where
        divisao = div alunos livros


--5
areaTriangulo :: Float -> Float -> Float -> Float
areaTriangulo a b c = if formaTriangulo a b c then (s * (s-a) * (s-b) * (s-c)) ** (1/2) else 0.0
    where 
        s = (a+b+c)/2

formaTriangulo :: Float -> Float -> Float -> Bool
formaTriangulo a b c 
    | (a+b) > c  = True
    | (a+c) > b  = True
    | (b+c) > a  = True
    | otherwise  = False


-- 6
bissexto :: Int -> Bool
bissexto ano = 
    if mod ano 100 == 0
        then 
            if mod ano 400 == 0
                then True
                else False
        else 
            if mod ano 4 == 0
                then True
                else False
