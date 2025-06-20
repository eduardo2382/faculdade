-- 1
numPar :: Int -> Bool
numPar num = mod num 2 == 0

-- 2
numImpar :: Int -> Bool
numImpar num = not(numPar num)

-- 3
media :: Double -> Double -> Double -> Double
media num1 num2 num3 = (num1+num2+num3)/3

-- 4
menorNum :: Int -> Int -> Int
menorNum num1 num2 = if num1 < num2 then num1 else num2

-- 5
eMinusc :: Char -> Bool
eMinusc carac = carac >= 'a' && carac <= 'z'

-- 6
verifNum :: Int -> Int
verifNum num 
    | num < 0 = -1
    | num == 0 = 0
    | otherwise = 1

-- 7
vinhos :: Int -> Int -> Int
vinhos quant valor = ((div quant 3) * (valor * 2)) + ((mod quant 3) * valor)

-- 8
precoCirco :: Int -> Double -> Double
precoCirco idade preco
    | idade <= 18 || idade >= 60  = preco * 0.5
    | otherwise = preco * 0.9


-- 9
toFahrenheit :: Double -> Double
toFahrenheit f = ((f - 32)*5)/9

toCelsius :: Double -> Double
toCelsius c = ((c*9)/5)+32


-- 10
paraMinusc :: Char -> Int
paraMinusc x 
    | x >= 'A' && x <= 'Z' = toEnum (fromEnum x + 32)
--  | x >= 'A' && x <= 'Z' = toEnum(fromEnum x - fromEnum 'a' + fromEnum 'A')
    | otherwise = fromEnum(x)


-- 11
magNum :: Int -> String
magNum num 
    | num == 0 = "Nulo"
    | num > 0 = "Positivo: " ++ show num
    | num < 0 = "Negativo: " ++ show num
