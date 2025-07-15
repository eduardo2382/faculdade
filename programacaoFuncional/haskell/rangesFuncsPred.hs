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
atePonto :: String -> String
atePonto lista 
    |head lista == '.' = tail lista
    |otherwise         = atePonto (tail lista)

digitosDecimais :: Float -> String
digitosDecimais num = lista
    where
        lista = show num


--c)
enesimoElemento :: [Int] -> Int -> Int
enesimoElemento lista pos = head(drop (pos-1) lista)