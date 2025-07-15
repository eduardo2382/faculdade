type Rua = String
type Numero = Int
type Cidade = String
type Endereco = (Rua, Numero, Cidade)

mostrarEndereco :: Endereco -> String
mostrarEndereco (rua, numero, cidade) = "Rua " ++ rua ++ ", " ++ show numero ++ " - " ++ cidade

type Nome = String
type Idade = Int
type Email = String
type Usuario = (Nome, Idade, Email)

mostrarUsuario :: Usuario -> String
mostrarUsuario (nome, idade, email) = "Nome: " ++ nome ++ " , Idade: " ++ show idade ++ " , Email: " ++ email

type NomeProduto = String
type Preco = Float
type Produto = (NomeProduto, Preco)

mostrarProduto :: Produto -> String
mostrarProduto (nome, preco) = "Produto: " ++ nome ++ " , Preco: R$ " ++ show preco

type Telefone = String
type Contato = (Nome, Telefone)

mostrarContato :: Contato -> String
mostrarContato (nome, telefone) = nome ++ " - " ++ telefone