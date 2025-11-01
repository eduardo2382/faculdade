class Estudante:
    def __init__(self):
        self.nome = "Eduardo"
        self.matricula = "0100"
        self.creditos = 0
    
    def adicionarCreditos(self, creditos):
        self.creditos = self.creditos + creditos
    
    def imprime(self):
        print("Nome: " + self.nome + "\nMatricula: " + self.matricula + "\nCreditos: " + str(self.creditos))

#Programa Principal

aluno = Estudante()
aluno.adicionarCreditos(100)
aluno.imprime()