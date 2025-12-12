class Estudante():
    def __init__(self, nom, matr, cred):
        self.__nome = nom
        self.__matricula = matr
        self.__creditos = cred

    def getNome(self):
        return self.__nome
    
    def getMatricula(self):
        return self.__matricula
    
    def getCreditos(self):
        return self.__creditos
    
    def listAtributos(self):
        return "Nome: " + self.__nome + "\nMatricula: " + str(self.__matricula ) + "\nCreditos: " + str(self.__creditos)