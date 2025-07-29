type Person = String
type Book = String

{-
type Database = [(Person, Book)]

exemplo :: Database
exemplo = [("Lia", "Sol"), ("Lia", "Mar"), ("Lia", "Lua"), ("Tom", "Lua"), ("Tom", "Fé"), ("Tom", "Vento"), ("Eva", "Mar"), ("Eva", "Sol"), ("Eva", "Paz"), ("Ian", "Flor"), ("Ian", "Brisa"), ("Ben", "Ria"), ("Ben", "Luz"), ("Ben", "Céu"), ("Zoe", "Vento"), ("Zoe", "Noite"), ("Max", "Fogo")]



livros :: Database -> Person -> [Book]
livros db pessoa = [l | (p, l) <-db , p==pessoa]


-- 1
emprestadoA :: Database -> Book -> [Person]
emprestadoA db livro = [p | (p, l) <- db , l==livro]

--2
emprestado :: Database -> Book -> Bool
emprestado db livro = (length [1 | (p, l) <- db , l==livro]) > 0

--3
numeroEmprestimos :: Database -> Person -> Int
numeroEmprestimos db pessoa = sum [1 | (p, l) <- db, p==pessoa]

--
novoEmprestimo :: Database -> Person -> Book -> Database
novoEmprestimo db pessoa livro = db ++ [(pessoa, livro)]


--4
-}

type Database = [(Person, [Book])]

exemplo :: Database
exemplo = [("Lia", ["Sol", "Mar", "Lua"]), ("Tom", ["Lua","Fe","Vento"]), ("Eva", ["Mar","Sol","Paz"]), ("Ian", ["Flor", "Brisa"]), ("Ben", ["Ria","Luz", "Céu"]), ("Max", ["Fogo"])]

livros :: Database -> Person -> [[Book]]
livros db pessoa = [l | (p, l) <- db, p == pessoa]

--1
emprestadoA :: Database -> Book -> [Person]
emprestadoA db livro = [p | (p, b) <- db, (length [l | l <- b, l==livro]) > 0]

--2
emprestado :: Database -> Book -> Bool
emprestado db livro = (sum [length [y | y <- x, y==livro] | (_, x) <- db]) > 0

--3
numeroEmprestimos :: Database -> Person -> Int
numeroEmprestimos db pessoa = sum [length l | (p, l) <- db, p==pessoa]

--
novoEmprestimo :: Database -> Person -> [Book] -> Database
novoEmprestimo db pessoa books = db ++ [(pessoa, books)]