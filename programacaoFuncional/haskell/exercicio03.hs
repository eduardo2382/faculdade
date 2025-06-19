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


-- 7
saoJoao :: Int -> Int -> Int -> Int
saoJoao diaAtual mesAtual anoAtual = 
    if antesSaoJoao
        then
            if mesAtual == 6
                then 
                    24 - diaAtual
                else 
                    diasMesAtual + diasAteJunho (mesAtual+1) + 24
        else 
            if diaAtual == 24
                then 
                    0
                else
                    diasAteDezembro (mesAtual+1) + diasMesAtual + diasAteJunho (1) + 24

    where
        antesSaoJoao = 
            if (mesAtual < 6) || ((mesAtual == 6) && (diaAtual < 24))
                then True
                else False

        diasDoMes mes = 
            if mes == 2
                then 
                    28 + fromEnum (bissexto anoAtual)
                else
                    if mes == 1 || mes == 3 || mes == 5 || mes == 7 || mes == 8 || mes == 10 || mes == 12
                        then 31
                        else 30

        diasMesAtual = (diasDoMes mesAtual) - diaAtual

        diasAteJunho mes = 
            if mes < 6
                then 
                    diasDoMes mes + diasAteJunho (mes+1)
                else 
                    0

        diasAteDezembro mes = 
            if mes <= 12
                then 
                    diasDoMes mes + diasAteDezembro (mes+1)
                else 
                    0
        