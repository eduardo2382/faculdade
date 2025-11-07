from estudante import Estudante

def main():
    aluno1 = Estudante("Eduardo", "0293", 0, "Teste, Bairro Teste, Rua Teste")

    aluno1.addCred(45)
    aluno1.updateEnder("Nova, Bairro Novo, Rua Nova")

    print("Aluno1: " + aluno1.nome + "\nMatricula: " + aluno1.matricula + "\nCreditos : " + str(aluno1.creditos) + "\nEndereco: " + aluno1.endereco)

    aluno2 = Estudante("Murilo", "2931", 244, "Novo, Bairro Velho, Rua 12, 45")
    aluno2.addCred(48)

    print("Creditos do aluno2: " + str(aluno2.creditos))

    aluno3 = Estudante("Joao", "023", 344, "Teste2 ,Bairro Teste2, Rua Teste2, 98")

    aluno3.addCred(-48)

    print(aluno3.creditos)

if __name__=="__main__": 
    main()