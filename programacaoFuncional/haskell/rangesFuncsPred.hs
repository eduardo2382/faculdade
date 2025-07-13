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
segundoElemento :: [Int] -> Int
segundoElemento lista = head (tail lista)

--b)
digitosDecimais :: [Char] -> Int
digitosDecimais lista 
    | head lista == '.' = length(tail lista)
    | otherwise         = digitosDecimais (tail lista)

--c)
enesimoElemento :: [Int] -> Int -> Int
enesimoElemento lista pos = head(drop (pos-1) lista)

--d)
mediaLista :: [Float] -> Float
mediaLista lista = (sum lista)/ fromIntegral (length lista)

--e) 
palindromo :: Int -> Bool
palindromo num = (show num) == (reverse (show num))