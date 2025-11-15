class Estudante():
    def __init__(self, nom):
        self.__nome = nom
        self.__matricula = "01"
        self.__creditos = 0

    def getCreditos(self):
        return self.__creditos
    
    def setCreditos(self, quant):
        self.__creditos = quant

    def addCreditos(self, quant):
        if(quant > 0):
            self.__creditos += quant
            
            return True
        else:
            return False