type Codigo = Int
type Nome = String
type Preco = Int

type BancoProdutos = [(Codigo, Nome, Preco)]

type Compras = [Codigo]

exemplo :: BancoProdutos
exemplo = [ (4719, "Fish Fingers", 121),
             (5643, "Nappies", 1010),
             (3814, "Orange Jelly", 56),
             (1111, "Hula Hoops", 21),
             (1112, "Hula Hoops (Giant)", 133),
             (1234, "Dry Sherry, 1lt", 540) ]

formataPreco :: Preco -> String --recebe um preco em centavos e retorna ele em real e no formato de string
formataPreco preco = 
    show (div preco 100) ++ 
    "." ++ 
    if (mod preco 100) < 10 
        then ("0"++show(mod preco 100)) 
        else (show (mod preco 100))


formataLinha :: Nome -> Preco -> String --pega o nome e o preco e cria uma string com "{Nome}......{Preco}"
formataLinha nome preco = 
    nome ++ 
    replicate (30 - ((length nome)+(length precoFormatado))) '.' ++
    precoFormatado

    where
        precoFormatado = formataPreco preco

precoTotal :: BancoProdutos -> Compras -> Int
precoTotal produtos compras = sum [p | (c, _, p) <- produtos, codigo <- compras, c==codigo]


linhasString :: BancoProdutos -> Compras -> String --percorre a lista produtos verificando o nome e preco de cada codigo da lista compras e formata uma linha adicionando em uma lista a linha
linhasString produtos compras = concat [(formataLinha n p)++"\n" | (c, n, p) <- produtos, codigo <- compras, c==codigo]

contaString :: BancoProdutos -> Compras -> String
contaString produtos compras = (linhasString produtos compras) ++ "\n" ++ formataLinha "Total" (precoTotal produtos compras)


mostrarConta :: BancoProdutos -> Compras -> IO()
mostrarConta produtos compras = putStrLn(contaString produtos compras)
