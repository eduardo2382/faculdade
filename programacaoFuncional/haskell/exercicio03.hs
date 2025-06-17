-- 2. Defina uma função que receba três números e determine se todos são diferentes.

diferentes :: Int -> Int -> Int -> Bool
diferentes num1 num2 num3 = if not(num1 == num2) && not(num2 == num3) && not(num1 == num3) then True else False

-- 3. Defina uma função que receba três números e calcule a mediana. A mediana é o valor central quando listamos os três números por ordem de grandeza.

mediana :: Int -> Int -> Int -> Int
mediana num1 num2 num3 
    | (num1 >= num2 && num1 <= num3) || (num1 >= num3 && num1 <= num2) = num1
    | (num2 >= num1 && num2 <= num3) || (num2 >= num3 && num2 <= num1) = num2
    | (num3 >= num2 && num3 <= num1) || (num3 >= num1 && num3 <= num2) = num3
    | otherwise = num1
