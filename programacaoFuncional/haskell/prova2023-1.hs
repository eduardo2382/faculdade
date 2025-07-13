--1
energia :: Float -> String
energia kwh 
    | kwh <= 99   = "R$ " ++ show (kwh * 1.35)
    | kwh <= 299  = "R$ " ++ show ((99 * 1.35) + ((kwh-99) * 1.55))
    | otherwise   = "R$ " ++ show ((99 * 1.35) + (200 * 1.55) + ((kwh-299) * 1.75))


--3
type Dia = Int
type Mes = Int
type Ano = Int
type Data = (Dia, Mes, Ano)
type Nome = String
type Matricula = Int
type Nota = Float
type Aluno = (Matricula, Nome, Data, Nota)

alunoMaisVelho :: Aluno -> Aluno -> Aluno -> String
alunoMaisVelho aluno1 aluno2 aluno3 
    | maisVelho dataAluno1 dataAluno2 && 
      maisVelho dataAluno1 dataAluno3     = nome1
    | maisVelho dataAluno2 dataAluno1 &&
      maisVelho dataAluno2 dataAluno3     = nome2
    | otherwise                           = nome3

    where
        (_, nome1, dataAluno1, _) = aluno1
        (_, nome2, dataAluno2, _) = aluno2
        (_, nome3, dataAluno3, _) = aluno3

        maisVelho data1 data2 = 
            if(ano1 < ano2) || (ano1 == ano2 && mes1 < mes2) || (ano1 == ano2 && mes1 == mes2 && dia1 < dia2)
                then True
                else False
            where
                (dia1, mes1, ano1) = data1
                (dia2, mes2, ano2) = data2

naoAniversariaram :: Aluno -> Aluno -> Aluno -> Data -> String
naoAniversariaram aluno1 aluno2 aluno3 dataAtual =
    aniversario dataAluno1 nome1 ++ aniversario dataAluno2 nome2 ++ aniversario dataAluno3 nome3 

    where
        (diaAtual, mesAtual, _) = dataAtual
        (_, nome1, dataAluno1, _) = aluno1
        (_, nome2, dataAluno2, _) = aluno2
        (_, nome3, dataAluno3, _) = aluno3

        aniversario dataAluno nomeAluno= 
            if (mesAtual < mesAluno) || (mesAtual == mesAluno && diaAtual < diaAluno)
                then nomeAluno ++ " "
                else ""

            where
                (diaAluno, mesAluno, anoAluno) = dataAluno
        
        
