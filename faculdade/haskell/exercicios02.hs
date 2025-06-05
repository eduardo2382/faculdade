-- 2.Usando guardas, defina uma função chamada sinal que receba um número Int e que retorne 1, 0 ou -1, dependendo se o valor é positivo, zero ou negativo, respectivamente.

sinal :: Int -> Int
sinal num 
    | num < 0 = (-1)
    | num == 0 = 0
    | otherwise = 1
    

-- 5. Usando guardas, defina uma função que, dado um inteiro, retorne um string que informe se o número é positivo, negativo ou nulo. Caso não for nulo, o string deverá conter também a magnitude do número. Por exemplo, para o valor 15 a função deverá retornar “Positivo 15”, para o valor -15 deverá retornar “Negativo 15” e para 0 deverá retornar “Nulo”.

verificarNum :: Int -> String
verificarNum num 
    | num > 0 = "Positivo: " ++ show num
    | num < 0 = "Negativo: " ++ show num
    | otherwise = "0"

-- 6.Defina uma função que receba como entradas três números Float correspondentes a três notas e que retorne "Aprovado", "Reprovado" ou "Vai para a Final". Considera-se aprovado quando a média das três notas for maior ou igual a 7 e reprovado quando a nota for menor que 5. Se a nota estiver entre 5 e 7, considera-se que vai para a final.

verificarSituacao :: Float -> Float -> Float -> String
verificarSituacao n1 n2 n3
    | (n1 + n2 + n3)/3 >= 7 = "Aprovado"
    | (n1 + n2 + n3)/3 >= 5 = "Vai para a final"
    | otherwise = "Reprovado"

-- 7. Dê definições diferentes para uma função lógica que implemente o "ou exclusivo". O ou exclusivo de dois valores é verdadeiro se e somente se um deles for verdadeiro e outro falso.

{-
ouExclusivo :: Bool -> Bool -> Bool
ouExclusivo v1 v2 = if (v1 && v2==False) || (v2 && v1==False) then True else False
-}



