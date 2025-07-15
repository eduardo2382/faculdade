--1.
--a)
-- ['a'..'z'] ++ ['A'..'Z']

--b)
-- [102, 105..1000]

--c)
-- [999, 996..102]

--d)
-- [102, 105..1000] ++ [100, 105..200]


--3.
--a)
segundoElemento :: [a] -> a
segundoElemento lista = head (tail lista)

--b)
digitosDecimais :: [Char] -> Int
digitosDecimais lista 
    | head lista == '.' = length(tail lista)
    | otherwise         = digitosDecimais (tail lista)

--c)
enesimoElemento :: [a] -> Int -> a
enesimoElemento lista pos = head(drop (pos-1) lista)

--d)
mediaLista :: [Float] -> Float
mediaLista lista = (sum lista)/ fromIntegral (length lista)

--e) 
palindromo :: Int -> Bool
palindromo num = (show num) == (reverse (show num))

--f)
unicoValor :: [Int] -> Bool
unicoValor [] = False
unicoValor lista 
    |(tail lista) == []                = True
    |head lista == head (tail lista) = unicoValor (tail lista)
    |otherwise                       = False