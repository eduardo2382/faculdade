from estudante import Estudante

def main():
    aluno1 = Estudante("Joao", 20250123, 0)

    print("Nome: " + aluno1.getNome())
    print("Matricula: " + str(aluno1.getMatricula()))
    print("Creditos: " + str(aluno1.getCreditos()))

if __name__ == "__main__":
    main()