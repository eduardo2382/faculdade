mostrarNome :: (String, Int) -> String
mostrarNome (nome, idade) = nome

inverter :: (a, b) -> (b, a)
inverter (x, y) = (y, x)

somaPar :: (Int, Int) -> Int
somaPar (num1, num2) = num1+num2

descricaoPessoa :: (String, Int, String) -> String
descricaoPessoa (nome, idade, cidade) = nome ++ " tem " ++ show idade ++ " anos e mora em " ++ cidade

somaMedia :: (Float, Float, Float) -> (Float, Float)
somaMedia (nota1, nota2, nota3) = (soma, media)
    where
        soma = nota1 + nota2 + nota3
        media = soma/3