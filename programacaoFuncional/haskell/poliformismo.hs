--1
shift :: ((a, a), a) -> (a, (a, a))
shift ((x, y), z) = (x, (y,z))

--2
--junta elementos de cada lista em uma lista de tuplas

zip' :: [a] -> [a] -> [(a, a)]
zip' [] ps = []
zip' ps [] = []
zip' (p:ps) (q:qs) = (p, q) : zip' qs ps

--3
ocorrencias :: Eq a => a -> [a] -> Int
ocorrencias _ [] = 0
ocorrencias x xs = length [item | item <- xs, item==x]

--4 
oneLookupFirst :: Eq a => [(a, a)] -> a -> a
oneLookupFirst [] _ = 0
oneLookupFirst itens item = fst [y | (x, y) <- itens, item==x]