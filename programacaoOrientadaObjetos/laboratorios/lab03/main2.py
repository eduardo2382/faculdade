from estudante import Estudante

def main():
    aluno1 = Estudante("Eduardo", "001", 0, "Teste, Bairro Teste, Rua Teste, 98")
    aluno2 = Estudante("Murilo", "002", 0, "Teste, Bairro Teste, Rua Teste, 23")
    aluno3 = Estudante("Isabela", "003", 0, "Teste, Bairro Teste, Rua Teste, 45")
    aluno4 = Estudante("Alves", "004", 0, "Teste, Bairro Teste, Rua Teste, 08")

    nomeBusca = input("Digite o nome para a busca: ")
    creditos = int(input("Digite quantos creditos quer adicionar: "))

    if(aluno1.nome == nomeBusca):
        aluno1.addCred(creditos)
    elif(aluno2.nome == nomeBusca):
        aluno2.addCred(creditos)
    elif(aluno3.nome == nomeBusca):
        aluno3.addCred(creditos)
    elif(aluno4.nome == nomeBusca):
        aluno4.addCred(creditos)
    else:
        print("Estudante não criado")

    total = aluno1.creditos + aluno2.creditos + aluno3.creditos + aluno4.creditos

    print("Nomes: " + aluno1.nome + ", " + aluno2.nome + ", " + aluno3.nome + ", " + aluno4.nome + "\nTotal de Creditos: "+ str(total))

    






if __name__ == "__main__":
    main()