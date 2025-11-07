class Estudante:
    def __init__(self, nomeInit, matriculaInit, creditosInit, enderecoInit):
        self.nome = nomeInit
        self.matricula = matriculaInit
        self.creditos = creditosInit
        self.endereco = enderecoInit

    def addCred(self, cred):
        self.creditos += cred

    def updateEnder(self, newEnder):
        self.endereco = newEnder

