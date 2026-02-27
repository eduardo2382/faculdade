class Impressora():
    def __init__(self, modelo, tipo, estoque):
        self.__modelo = modelo
        self.__tipo = tipo
        self.__estoque = estoque
        self.__disponivel = (self.__estoque > 0)

    def aumentaEstoque(self, quant):
        if quant<0 or quant == None:
             raise ValueError("Quantidade invalida")
        else:
            self.__estoque += quant 
    
    def diminuiEstoque(self, quant):
        if quant<0 or quant == None:
             raise ValueError("Quantidade invalida")
        else:
            self.__estoque -= quant 

    def getModelo(self):
        return self.__modelo

    def getTipo(self):
        return self.__tipo

    def getEstoque(self):
        return self.__estoque

    def getDisponivel(self):
        return self.__disponivel
    
    def setModelo(self, newModelo):
        self.__modelo = newModelo

    def setTipo(self, newTipo):
            self.__tipo = newTipo

    def setEstoque(self, newEstoque):
        self.__estoque = newEstoque

    def setDisponivel(self, newDisponivel):
            self.__disponivel = newDisponivel

    def imprimeAtributos(self):
        print(
            'Modelo: ' + self.__modelo +
            '\nTipo: ' + self.__tipo +
            '\nEstoque: ' + str(self.__estoque) +
            '\nDisponivel: ' + str(self.__disponivel))