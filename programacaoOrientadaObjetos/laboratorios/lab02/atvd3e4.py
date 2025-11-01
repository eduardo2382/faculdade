class Estudante:
    def __init__(self, nom, enderec):
        self.nome = nom
        self.matricula = "0100"
        self.creditos = 0
        self.endereco = enderec
    
    def adicionarCreditos(self, creditos):
        self.creditos = self.creditos + creditos
    
    def imprime(self):
        print("Nome: " + self.nome + "\nMatricula: " + self.matricula + "\nCreditos: " + str(self.creditos) + "\nEndereco: " + self.endereco)

#Programa Principal

nome = input("Insira o nome do aluno: ")

aluno = Estudante(nome, "Bairro Teste, Rua Teste, 15")

#imprimindo usando o metodo imprime()
aluno.imprime()

#imprimindo sem usar o metodo imprime()
print("Nome: " + aluno.nome + "\nMatricula: " + aluno.matricula + "\nCreditos: " + str(aluno.creditos) + "\nEndereco: " + aluno.endereco)