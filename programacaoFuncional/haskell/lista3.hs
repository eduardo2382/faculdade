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
            diasAteDezembro (mesAtual+1) + diasMesAtual + diasAteJunho (1) + 24

    where
        antesSaoJoao = 
            if (mesAtual < 6) || ((mesAtual == 6) && (diaAtual <= 24))
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


-- 8
locadora :: Int -> Int -> Int
locadora dias km = 
    if km > kmMax
        then 
            ((km-kmMax)*12)+(90*dias)
        else
            90*dias
    where
        kmMax = dias*100
        

--9
corretora :: Bool -> Int -> Bool
corretora mulher idade =
    if mulher && idade > 40
        then
            True
        else 
            False


--10
energia :: Float -> Float
energia kwh 
    | kwh <= 99  = kwh * 1.35
    | kwh <= 299 = kwh * 1.55
    | kwh <= 574 = (kwh * 1.75) + 35 + (0.10 * ((kwh * 1.75) + 35))
    | otherwise  = (kwh * 2.15) + 35 + (0.10 * ((kwh * 2.75) + 35))


--11
energiaProgressiva :: Float -> Float
energiaProgressiva kwh 
    | kwh <= 99  = tarifaA kwh
    | kwh <= 299 = tarifaB kwh
    | kwh <= 574 = tarifaC kwh
    | otherwise  = tarifaD kwh

    where
        tarifaA gasto = gasto * 1.35
        tarifaB gasto = (tarifaA 99) + ((gasto-99) * 1.55)
        tarifaC gasto = (tarifaA 99) + (tarifaB 299) + ((gasto-299) * 1.75) + 35 + (0.10 * (((gasto-299) * 1.75) + 35))
        tarifaD gasto = (tarifaA 99) + (tarifaB 299) + (tarifaC 574) + ((gasto-574 * 2.15) + 35 + (0.10 * ((gasto-574 * 2.75) + 35)))


--12
equacao :: Float -> Float -> Float -> String
equacao a b c 
    | a == 0     = "Nao e equacao de segundo grau"
    | delta < 0  = "Nao tem solucao real"
    | delta == 0 = "A unica solucao real é " ++ show r 
    | otherwise  = "As solucoes reais sao " ++ show r1 ++ " e " ++ show r2
    where 
        delta = (b**2) - 4 * a * c
        r = (b*(-1)+(delta**(1/2)))/2*a
        r1 = (b*(-1)+(delta**(1/2)))/2*a
        r2 = (b*(-1)-(delta**(1/2)))/2*a


--13


--14
mercado :: Float -> Int -> Int -> IO ()
mercado pao leite vinho = 
    putStrLn(
        (if pao > 0 then linha "Pao " precoPao else "") ++
        (if leite > 0 then linha "Leite " precoLeite else "") ++ 
        (if vinho > 0 then linha "Vinho " precoVinho else "") ++
        (if descontoPao > 0 then linha "Desconto no Pao " descontoPao else "") ++
        (if descontoLeite > 0 then linha "Desconto no Leite " descontoLeite else "") ++
        (if descontoVinho > 0 then linha "Desconto no Vinho " descontoVinho else "") ++
        linha "Valor total " total
    )

    where
        precoPao = pao * 4.5
        descontoPao = if pao >= 1 then precoPao*0.05 else 0

        precoLeite = fromIntegral(leite) * 5.30
        descontoLeite = fromIntegral(div leite 3) * 0.53  

        precoVinho = fromIntegral(vinho * 25)
        descontoVinho = fromIntegral((div vinho 3) * 25)

        total = (precoPao + precoLeite + precoVinho) - (descontoPao + descontoLeite + descontoVinho)

        formatarNum num = fromIntegral(round(num*100)) / 100

        linha nome valor = nome ++ replicate (20 - length nome) '-' ++ " R$ " ++ show(formatarNum valor) ++ "\n"