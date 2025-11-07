from atvd1 import Estudante
def main():
    aluno = Estudante("Joao", "023", 344, "Teste2 ,Bairro Teste2, Rua Teste2, 98")

    aluno.addCred(-48)

    print(aluno.creditos)

if __name__ == "__main__":
    main()