--1
type Nome = String
type Data = (Int, Int, Int)
type Pessoa = (Nome, Data)

aniversariaram :: Pessoa -> Pessoa -> Pessoa -> Int -> Int -> String
aniversariaram pessoa1 pessoa2 pessoa3 diaAtual mesAtual = 
    aniversariante1 ++ aniversariante2 ++ aniversariante3

    where
        (nome1, (dia1, mes1, _)) = pessoa1
        (nome2, (dia2, mes2, _)) = pessoa2
        (nome3, (dia3, mes3, _)) = pessoa3

        aniversariante1 = 
            if (mes1 < mesAtual) || (mes1 == mesAtual && dia1 <= diaAtual)
                then 
                    nome1 ++ " "
                else
                    ""

        aniversariante2 = 
            if (mes2 < mesAtual) || (mes2 == mesAtual && dia2 <= diaAtual)
                then 
                    nome2 ++ " "
                else
                    ""

        aniversariante3 = 
            if (mes3 < mesAtual) || (mes3 == mesAtual && dia3 <= diaAtual)
                then 
                    nome3 ++ " "
                else
                    ""

proxAniversariante :: Pessoa -> Pessoa -> Int -> Int -> String
proxAniversariante pessoa1 pessoa2 diaAtual mesAtual = 
    if ((mes1 > mesAtual) && (mes2 > mesAtual)) || ((mes1 < mesAtual) && (mes2 < mesAtual))
        then primeiroAniversario
        else
            if(mes1 > mesAtual) || (mes1 == mesAtual) && (dia1 > diaAtual)
                then nome1
                else 
                    if (mes2 > mesAtual) || (mes2 == mesAtual) && (dia2 > diaAtual)
                        then nome2
                        else nome1        
            
    where
        (nome1, (dia1, mes1, _)) = pessoa1
        (nome2, (dia2, mes2, _)) = pessoa2
        primeiroAniversario =
            if (mes1 < mes2) || (mes1 == mes2 && dia1 < dia2) 
                then nome1
                else nome2


--2
estacionamento :: Int -> Int -> String
estacionamento entrada saida 
    | minutos <= 20   = "R$ 00.00"
    | minutos <= 60   = "R$ 10.00"
    | otherwise       = "R$ " ++ show ((fromIntegral(minutos-60) * 0.10 ) + 10.0)
    where
        minutos = saida - entrada