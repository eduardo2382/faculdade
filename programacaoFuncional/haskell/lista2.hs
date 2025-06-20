-- 2.Usando guardas, defina uma função chamada sinal que receba um número Int e que retorne 1, 0 ou -1, dependendo se o valor é positivo, zero ou negativo, respectivamente.
sinal :: Int -> Int
sinal num 
    | num < 0 = (-1)
    | num == 0 = 0
    | otherwise = 1
    

-- 5
verificarNum :: Int -> String
verificarNum num 
    | num > 0 = "Positivo: " ++ show num
    | num < 0 = "Negativo: " ++ show num
    | otherwise = "0"


-- 6
verificarSituacao :: Float -> Float -> Float -> String
verificarSituacao n1 n2 n3
    | (n1 + n2 + n3)/3 >= 7 = "Aprovado"
    | (n1 + n2 + n3)/3 >= 5 = "Vai para a final"
    | otherwise = "Reprovado"


-- 7
{-
ouExclusivo :: Bool -> Bool -> Bool
ouExclusivo v1 v2 = if (v1 && v2==False) || (v2 && v1==False) then True else False
-}



