type Codigo = Int
type Nome = String
type Preco = Int

type BancoProdutos = [(Codigo, Nome, Preco)]

type Compras = [Codigo]

formataPreco :: Preco -> String
formataPreco preco = show(div preco 100) ++ "." ++ show (mod preco 100)


formataLinha :: Nome -> Preco -> String
formataLinha nome preco = nome

mostrarConta :: BancoProdutos -> Compras -> IO()
mostrarConta produtos compras = putStrLn(contaString produtos compras)
-}