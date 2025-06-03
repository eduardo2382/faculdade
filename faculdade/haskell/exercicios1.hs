-- 1.Defina uma função que permita verificar se um número Int é par
numPar :: Int -> Bool
numPar num = mod num 2 == 0

-- 2.Defina uma função que permita verificar se um número Int é ímpar
numImpar :: Int -> Bool
numImpar num = not(numPar num)

-- 3.Defina uma função que calcule a média aritmética de três números Double
media :: Double -> Double -> Double -> Double
media num1 num2 num3 = (num1+num2+num3)/3

-- 4.Defina uma função que calcule o menor de dois números Int
menorNum :: Int -> Int -> Int
menorNum num1 num2 = if num1 < num2 then num1 else num2

-- 5.Defina uma função que permita verificar se um caractere é uma letra minúscula do alfabeto inglês. 
eMinusc :: Char -> Bool
eMinusc carac = carac >= 'a' && carac <= 'z'

-- 6.Defina uma função que receba um número Int e que retorne 1, 0 ou -1, dependendo se o valor é positivo, zero ou negativo, respectivamente.
verifNum :: Int -> Int
verifNum num 
    | num < 0 = -1
    | num == 0 = 0
    | otherwise = 1

-- 7.Um supermercado está com oferta na compra de vinhos. Na compra de três garrafas paga-se apenas duas. Defina uma função que receba a quantidade de garrafas de vinho compradas e o preço individual de cada garrafa, sem descontos, e calcule o valor total a pagar

-- 8.Na última semana do circo em Aracaju os ingressos estão com 50% de desconto para menores de idade e idosos. Considere menor de idade até os 18 anos, inclusive, e idoso a partir dos 60 anos. Para o resto da população o desconto é de 10%. Defina uma função que receba a idade e o preço normal do ingresso, um Int e um Double, respectivamente. A função deve retornar o valor a ser pago.
precoCirco :: Int -> Double -> Double
precoCirco idade preco
    | idade <= 18 || idade >= 60  = preco * 0.5
    | otherwise = preco * 0.9

-- 9.Defina duas funções, uma para transformar graus fahrenheit para centígrados e outra que faz o inverso.
toFahrenheit :: Double -> Double
toFahrenheit f = ((f - 32)*5)/9

toCelsius :: Double -> Double
toCelsius c = ((c*9)/5)+32

-- 10.Defina uma função que receba um caractere. Caso o caractere for uma letra maiúscula do alfabeto inglês a função deverá retornar a correspondente letra minúscula, caso contrário a função retorna o próprio caractere. Na definição, só pode usar as funções pré-definidas toEnum e fromEnum

paraMinusc :: Char -> Int
paraMinusc x 
    | x >= 'A' && x <= 'Z' = toEnum (fromEnum x + 32)
--  | x >= 'A' && x <= 'Z' = toEnum(fromEnum x - fromEnum 'a' + fromEnum 'A')
    | otherwise = fromEnum(x)

-- 11.Defina uma função que, dado um inteiro, retorne um string que informe se o número é positivo, negativo ou nulo. Caso não for nulo, o string deverá conter também a magnitude do número. Por exemplo, para o valor 15 a função deverá retornar “Positivo 15”, para o valor -15 deverá retornar “Negativo 15” e para 0 deverá retornar “Nulo”

magNum :: Int -> String
magNum num 
    | num == 0 = "Nulo"
    | num > 0 = "Positivo: " ++ show num
    | num < 0 = "Negativo: " ++ show num
