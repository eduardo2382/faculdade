class Estudante():
    def __init__(self, nomeInic, matriculaInic, emailInic):
        self.__nome = nomeInic
        self.__matricula = matriculaInic
        self.__email = emailInic
        self.__curso = "Sistemas De Informação"
        self.__creditos = 0

    def getNome(self):
        return self.__nome
    
    def getMatricula(self):
        return self.__matricula
    
    def getEmail(self):
        return self.__email
    
    def getCurso(self):
        return self.__curso
    
    def getCreditos(self):
        return self.__creditos
    
    def setNome(self, novoNome):
        self._nome = novoNome
    
    def setMatricula(self, novaMatricula):
        self.__matricula = novaMatricula

    def setEmail(self, novoEmail):
        self.__email = novoEmail

    def setCurso(self, novoCurso):
        self.__curso = novoCurso

    def setCreditos(self, novosCreditos):
        self.__creditos = novosCreditos

    def imprimAtributos(self):
        return print("Nome: " + self._nome + "\nMatricula: " + self.__matricula + "\nEmail: " + self.__email + "\nCurso: " + self.__curso + "\nCreditos: " + str(self.__creditos))

    def addCreditos(self, quantidade):
        if(quantidade >= 0):
            self.__creditos += quantidade

        